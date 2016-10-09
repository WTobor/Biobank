using magisterka.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class DodajUzytkownikaProgramu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //brak dostępu niezalogowanemu użytkownikowi
            if (!String.IsNullOrEmpty((string)Session["id_uzytk"]))
            {
                string id_uzytk = (string)Session["id_uzytk"];
            }
            else
            {
                Session["brak_dostepu"] = "true";
                Response.Redirect("Logowanie.aspx", true);
            }

            if (!IsPostBack)
            {
                string id_programu = (string)Session["id_programu"];
                string akronim = AkronimProgramu.SprawdzAkronim(id_programu);
                WybranyProgramLabel.Text = "Wybrany program: " + akronim;

                WypelnijDropDownListUzytk();
            }
        }

        private void WypelnijDropDownListUzytk()
        {
            int id_uzytk;
            String imie, nazwisko, Tekst;
            Dictionary<int, String> wszyscy_userzy = new Dictionary<int, string>();

            string query = "SELECT [id_uzytk], [imie], [nazwisko] FROM [dbo].[UZYTK]";

            Laczenie.Open();
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    id_uzytk = reader.GetInt32(0);
                    imie = reader.GetString(1);
                    nazwisko = reader.GetString(2);
                    Tekst = imie + " " + nazwisko;
                    wszyscy_userzy.Add(id_uzytk, Tekst);
                }
                reader.Close();
            }

            List<int> lista_wybranych = (List<int>)Session["lista_user"];
            if (!String.IsNullOrEmpty((string)Session["id_uzytk"]))
            {

                int id = Convert.ToInt32(Session["id_uzytk"]);
                lista_wybranych.Add(id);
            }


            if (lista_wybranych.Count > 0 && wszyscy_userzy.Count > 0)
            {
                foreach (int wybrany in lista_wybranych)
                {
                    wszyscy_userzy.Remove(wybrany);
                }
                if (wszyscy_userzy.Count == 0)
                {
                    BrakDanych.Visible = true;
                    DodawanieUzytkownika.Visible = false;
                }
            }

            DropDownListUzytk.DataSource = wszyscy_userzy;
            DropDownListUzytk.DataValueField = "Key";
            DropDownListUzytk.DataTextField = "Value";
            DropDownListUzytk.DataBind();
        }

        protected void DodajKlik(object sender, EventArgs e)
        {
            //int id_uprawnienia;
            string id_jednostki;
            int id_uzytk;
            int wykonano = 0;

            string id_programu = (string)Session["id_programu"];

            id_uzytk = Convert.ToInt32(DropDownListUzytk.SelectedValue.ToString());

            //pobranie id_jednostki
            string query0 = "select id_jednostka from [dbo].[UZYTK] where id_uzytk=" + id_uzytk + "";

            Laczenie.Open();
            using (SqlCommand command0 = Laczenie.SqlCommand(query0))
            {
                SqlDataReader reader0 = command0.ExecuteReader();
                if (reader0.Read())
                {
                    id_jednostki = reader0.GetInt32(0).ToString();
                }
                else        //pobranie domyślnej testowej jednostki
                {
                    id_jednostki = "1";
                }
                reader0.Close();
            }
            Laczenie.Close();

            string query = "INSERT INTO [dbo].[UZYTK_PROJEKT] ([id_uzytk],[id_projektu]) VALUES ('" + id_uzytk + "', '" + id_programu + "')";

            Laczenie.Open();
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                wykonano = command.ExecuteNonQuery();
            }
            Laczenie.Close();

            if (wykonano > 0)
            {
                Session["blad_insert"] = "0";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: " + query);
                Response.Redirect("ListaUczestnikowProgramu.aspx", true);
            }
            else
            {
                Session["blad_insert"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd -> " + query);
                Response.Redirect("ListaUczestnikowProgramu.aspx", true);
            }
        }

        protected void DodajJednostke_Click(object sender, EventArgs e)
        {
            Response.Redirect("DodajJednostke.aspx", true);
        }
    }
}