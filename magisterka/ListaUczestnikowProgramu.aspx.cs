using magisterka.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class ListaUczestnikowProgramu : System.Web.UI.Page
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

            //wykona się tylko za pierwszym razem
            if (!IsPostBack)
            {
                string id_programu = (string)Session["id_programu"];
                string akronim = AkronimProgramu.SprawdzAkronim(id_programu);

                //gdy archiwalny program
                if (!String.IsNullOrEmpty((string)Session["archiwum"]))
                {
                    DodajUzytkownika.Visible = false;
                    WybranyProgramLabel.Text = "Wybrany program archiwalny: " + akronim;
                }
                else
                {
                    WybranyProgramLabel.Text = "Wybrany program: " + akronim;
                }

                List<int> lista_user = new List<int>();
                int id_uzytka = -1;

                string admin;
                string numer = "-1";

                string query0 = "select id_Admin from projekt where id_projektu=" + id_programu;

                Laczenie.Open();
                using (SqlCommand command0 = Laczenie.SqlCommand(query0))
                {
                    SqlDataReader reader0 = command0.ExecuteReader();
                    if (reader0.Read())
                    {
                        numer = reader0.GetInt32(0).ToString();
                    }
                    reader0.Close();
                }
                Laczenie.Close();

                string query1 = "select imie, nazwisko from [dbo].[UZYTK] where id_uzytk=" + numer;

                Laczenie.Open();
                using (SqlCommand command1 = Laczenie.SqlCommand(query1))
                {
                    SqlDataReader reader1 = command1.ExecuteReader();
                    if (reader1.Read())
                    {
                        admin = reader1.GetString(0).ToString() + " " + reader1.GetString(1).ToString();
                        LabelAdmin.Text = admin.ToString();
                    }
                    reader1.Close();
                }
                Laczenie.Close();

                //musi być left join, bo ZAWSZE jest Admin, a nie muszą być użytkownicy
                string query = "select id_uzytk from UZYTK_PROJEKT where UZYTK_PROJEKT.id_projektu=" + id_programu;

                Laczenie.Open();
                using (SqlCommand command = Laczenie.SqlCommand(query))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        id_uzytka = reader.GetInt32(0);
                        lista_user.Add(id_uzytka);
                    }

                    Session["lista_user"] = lista_user;
                    ListViewUzytkownicy.DataBind();
                    reader.Close();
                }

                // tylko Admin może dodać użytkownika
                if (Session["id_uzytk"].ToString() != numer)
                {
                    DodajUzytkownika.Visible = false;
                }

                if (!String.IsNullOrEmpty((string)Session["blad_insert"]))
                {
                    if ((string)Session["blad_insert"] == "0")      //nie wystąpił błąd
                    {
                        PoprAktual.Text = "Poprawnie dodano nowego użytkownika";
                    }
                    else if ((string)Session["blad_insert"] == "1")     //wystąpił błąd
                    {
                        PoprAktual.Text = "Nie udało się dodać nowego użytkownika - spróbuj ponownie";
                    }
                    Session["blad_insert"] = String.Empty;      //usuwanie sesji (komunikat już się wyświetlił)
                }
            }
        }

        protected void DodajUzytkownika_Click(object sender, EventArgs e)
        {
            Response.Redirect("DodajUzytkProgramu.aspx", true);
        }
    }
}