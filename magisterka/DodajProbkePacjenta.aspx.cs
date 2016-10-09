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
    public partial class DodajProbkeProgramu : System.Web.UI.Page
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
                WybranyProgramLabel.Text = "Wybrany program: " + akronim;
                Session["blad_insert"] = String.Empty;

                //automatycznie zaznacza datę aktualną
                CalendarProbka.TodaysDate = DateTime.Today;
                CalendarProbka.SelectedDate = CalendarProbka.TodaysDate;
            }

        }

        protected void DodajKlik(object sender, EventArgs e)
        {
            String numer;
            String nazwa;
            String data;
            String uwagi;
            String id_slownika_statusow;
            String id_slownika_materialow;
            String id_probki = String.Empty;
            int wykonano1 = 0;
            int wykonano2 = 0;

            data = CalendarProbka.SelectedDate.ToString();

            numer = TextBoxNumer.Text.ToString();
            nazwa = TextBoxNazwa.Text.ToString();
            uwagi = TextBoxUwagi.Text.ToString();

            id_slownika_statusow = DropDownListStatus.SelectedItem.Value.ToString();
            id_slownika_materialow = DropDownListMaterial.SelectedItem.Value.ToString();

            string id_programu = (string)Session["id_programu"];

            string query0 = "insert into PROBKA (numer, nazwa, data, uwagi, id_slownika_statusow, id_projektu, id_slownika_materialow) values ('"
            + numer + "', '" + nazwa + "', '" + data + "', '" + uwagi + "', '" + id_slownika_statusow + "', '" + id_programu + "', '" + id_slownika_materialow + "')";

            Laczenie.Open();
            using (SqlCommand command0 = Laczenie.SqlCommand(query0))
            {
                wykonano1 = command0.ExecuteNonQuery();
            }

            if (wykonano1 > 0)
            {
                Session["blad_insert"] = "0";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: " + query0);
            }
            else
            {
                Session["blad_insert"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd -> " + query0);
                Response.Redirect("ListaProbekProgramu.aspx", true);
            }
            Laczenie.Close();
            Session["blad_insert"] = String.Empty; 

            //pobranie id_probki
            string query1 = "select id_probki from [dbo].[PROBKA] where numer='" + numer + "' and nazwa='" + nazwa + "'";

            Laczenie.Open();
            using (SqlCommand command1 = Laczenie.SqlCommand(query1))
            {
                SqlDataReader reader1 = command1.ExecuteReader();
                if (reader1.Read())
                {
                    id_probki = reader1.GetInt32(0).ToString();
                    //zapisanie do logów
                    Logi.LogFile(Session["login"] + " - SQL: " + query1);
                }
                else
                {
                    Session["blad_insert"] = "1";
                    //zapisanie do logów
                    Logi.LogFile(Session["login"] + " : błąd -> " + query1);
                    Response.Redirect("ListaProbekProgramu.aspx", true);
                }
                reader1.Close();
                Session["blad_insert"] = String.Empty; 
            }
            Laczenie.Close();

            string id_pacjent = (string)Session["id_pacjent"];

            string query2 = "insert into PACJ_PROB (id_probki, id_pacjent) values ('" + id_probki + "', '" + id_pacjent + "')";

            Laczenie.Open();
            using (SqlCommand command2 = Laczenie.SqlCommand(query2))
            {
                wykonano2 = command2.ExecuteNonQuery();
            }
            Laczenie.Close();

            if (wykonano2 > 0)
            {
                Session["blad_insert"] = "0";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: " + query2);
                Response.Redirect("ListaProbekPacjenta.aspx", true);
            }
            else
            {
                Session["blad_insert"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd -> " + query2);
                Response.Redirect("ListaProbekPacjenta.aspx", true);
            }
            Session["blad_insert"] = String.Empty; 
        }
    }
}