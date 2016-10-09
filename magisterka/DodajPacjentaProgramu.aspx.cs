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
    public partial class DodajPacjentaProgramu : System.Web.UI.Page
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
                if (String.IsNullOrEmpty((string)Session["id_grupy"]))
                {
                    Session["pacjent_grupy"] = "1";
                    Response.Redirect("ListaGrupProgramu.aspx", true);
                }

                string id_programu = (string)Session["id_programu"];
                string akronim = AkronimProgramu.SprawdzAkronim(id_programu);
                WybranyProgramLabel.Text = "Wybrany program: " + akronim;
                Session["blad_insert"] = String.Empty;
            }

        }

        protected void DodajKlik(object sender, EventArgs e)
        {
            String imie;
            String nazwisko;
            String pesel;
            String id_pacjent = String.Empty;
            String id_grupa_proj = String.Empty;
            int wykonano1 = 0;
            int wykonano2 = 0;
            int wykonano3 = 0;

            string id_programu = (string)Session["id_programu"];
            string id_grupy = (string)Session["id_grupy"];

            imie = TextBoxImie.Text;
            nazwisko = TextBoxNazwisko.Text;
            pesel = TextBoxPesel.Text;

            string query = "insert into PACJENT (imie, nazwisko, pesel) values ('" + imie + "', '" + nazwisko + "', '" + pesel + "')";
            
            Laczenie.Open();
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                wykonano1 = command.ExecuteNonQuery();
            }
            Laczenie.Close();

            if (wykonano1 > 0)
            {
                Session["blad_insert"] = "0";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: " + query);
            }
            else
            {
                Session["blad_insert"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd -> " + query);
                Response.Redirect("ListaPacjentowProgramu.aspx", true);
            }
            Session["blad_insert"] = String.Empty;

            //pobranie id_pacjenta z utworzonej przed chwilą pozycji
            string query0 = "select id_pacjent from PACJENT where pesel='" + pesel + "' and nazwisko='" + nazwisko + "'";

            Laczenie.Open();
            using (SqlCommand command0 = Laczenie.SqlCommand(query0))
            {
                SqlDataReader reader0 = command0.ExecuteReader();
                if (reader0.Read())
                {
                    //zapisanie do logów
                    Logi.LogFile(Session["login"] + " - SQL: " + query0);
                    id_pacjent = reader0.GetInt32(0).ToString();
                }
                else        //w przypadku jakiegoś błędu np. rozłączenia z bazą
                {
                    Session["blad_insert"] = "1";
                    //zapisanie do logów
                    Logi.LogFile(Session["login"] + " : błąd -> " + query0);
                    Response.Redirect("ListaPacjentowProgramu.aspx", true);
                }
                reader0.Close();
                Session["blad_insert"] = String.Empty;
            }
            Laczenie.Close();
            // zakładamy, że pesel i nazwisko wystarczą do identyfikacji!

            //sprawdzanie, czy jest już taka pozycja w bazie
            string query1 = "select id_grupa_proj from GRUPA_PROJ where id_grupa=" + id_grupy + " and id_projekt='" + id_programu + "'";

            Laczenie.Open();
            using (SqlCommand command11 = Laczenie.SqlCommand(query1))
            {
                SqlDataReader reader1 = command11.ExecuteReader();
                if (reader1.Read())
                {
                    Session["blad_insert"] = "0";
                    id_grupa_proj = reader1.GetInt32(0).ToString();
                }
                else        //w przypadku jakiegoś błędu np. rozłączenia z bazą
                {
                    Session["blad_insert"] = "1";
                    //zapisanie do logów
                    Logi.LogFile(Session["login"] + " : błąd -> " + query1);
                    Response.Redirect("ListaPacjentowProgramu.aspx", true);
                }
                reader1.Close();
                Session["blad_insert"] = String.Empty;
            }
            Laczenie.Close();

            if (String.IsNullOrEmpty(id_grupa_proj))
            {
                string query2 = "insert into GRUPA_PROJ (id_projekt, id_grupa) values ('" + id_programu + "', " + id_grupy + ")";

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
                }
                else
                {
                    Session["blad_insert"] = "1";
                    //zapisanie do logów
                    Logi.LogFile(Session["login"] + " : błąd -> " + query2);
                    Response.Redirect("ListaPacjentowProgramu.aspx", true);
                }
                Session["blad_insert"] = String.Empty;

                string query3 = "select id_grupa_proj from GRUPA_PROJ where id_grupa=" + id_grupy + " and id_projekt='" + id_programu + "'";

                Laczenie.Open();                
                using (SqlCommand command3 = Laczenie.SqlCommand(query3))
                {
                    SqlDataReader reader3 = command3.ExecuteReader();
                    if (reader3.Read())
                    {
                        //zapisanie do logów
                        Logi.LogFile(Session["login"] + " - SQL: " + query3);
                        id_grupa_proj = reader3.GetInt32(0).ToString();
                    }
                    else        //w przypadku jakiegoś błędu np. rozłączenia z bazą
                    {
                        Session["blad_insert"] = "1";
                        //zapisanie do logów
                        Logi.LogFile(Session["login"] + " : błąd -> " + query3);
                        Response.Redirect("ListaPacjentowProgramu.aspx", true);
                    }
                    reader3.Close();
                    Session["blad_insert"] = String.Empty;
                }
                Laczenie.Close();
            }
            
            string query4 = "insert into PACJ_PROJ (id_projektu, id_pacjent, id_grupa_proj) values ('" + id_programu + "', '" + id_pacjent + "', '" + id_grupa_proj + "')";
            
            Laczenie.Open();
            using (SqlCommand command4 = Laczenie.SqlCommand(query4))
            {
                wykonano3 = command4.ExecuteNonQuery();
            }
            Laczenie.Close();

            if (wykonano3 > 0)
            {
                Session["blad_insert"] = "0";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: " + query4);
                Response.Redirect("ListaPacjentowProgramu.aspx", true);
            }
            else
            {
                Session["blad_insert"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd ->" + query4);
                Response.Redirect("ListaPacjentowProgramu.aspx", true);
            }
            Session["blad_insert"] = String.Empty;
        }
    }
}