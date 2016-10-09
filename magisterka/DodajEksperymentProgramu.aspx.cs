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
    public partial class DodajEksperymentProjektu : System.Web.UI.Page
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
                CalendarEksp.TodaysDate = DateTime.Today;
                CalendarEksp.SelectedDate = CalendarEksp.TodaysDate;
            }
        }

        protected void DodajKlik(object sender, EventArgs e)
        {
            String data;
            String opis;
            String wynik;
            String uwagi;
            String id_eksperymentu = String.Empty;
            int wykonano1 = 0;
            int wykonano2 = 0;

            data = CalendarEksp.SelectedDate.ToString();
            opis = TextBoxOpisEksp.Text;
            wynik = TextBoxWynikEksp.Text;
            uwagi = TextBoxUwagiEksp.Text;

            string id_programu = (string)Session["id_programu"];

            List<ListItem> wybrane_metody = new List<ListItem>();       //lista pomocnicza
            foreach (ListItem metoda in CheckBoxListMetody.Items)
            {
                if (metoda.Selected)
                {
                    wybrane_metody.Add(metoda);
                }
            }

            if (wybrane_metody.Count > 0)     //wybrano jakiekolwiek metody
            {
                //pobieranie id_slownika_metod (z listy)
                foreach (ListItem metoda in wybrane_metody)
                {
                    String nazwa_metody = metoda.Value;
                    int id_slownika_metod = -1;
                    string query0 = "select id_slownika_metod from SLOWNIK_METOD where nazwa_metody='" + nazwa_metody + "'";
                    Laczenie.Open();
                    using (SqlCommand command0 = Laczenie.SqlCommand(query0))
                    {
                        SqlDataReader reader = command0.ExecuteReader();
                        if (reader.Read())
                        {
                            id_slownika_metod = reader.GetInt32(0);
                        }
                        else        //w przypadku jakiegoś błędu np. rozłączenia z bazą
                        {
                            Session["blad_insert"] = "1";
                            //zapisanie do logów
                            Logi.LogFile(Session["login"] + " : błąd -> " + query0);
                            Response.Redirect("ListaEksperymentowProgramu.aspx", true);
                        }
                        reader.Close();
                        Session["blad_insert"] = String.Empty;
                    }
                    Laczenie.Close();

                    string query1 = "insert into EKSPERYMENT (data, opis, wynik, uwagi, id_projektu) values ('" + data + "', '" + opis + "', '" + wynik + "', '" + uwagi + "', " + id_programu + ")";
                    Laczenie.Open();
                    using (SqlCommand command1 = Laczenie.SqlCommand(query1))
                    {
                        wykonano1 = command1.ExecuteNonQuery();
                    }
                    Laczenie.Close();

                    if (wykonano1 > 0)
                    {
                        Session["blad_insert"] = "0";
                        //zapisanie do logów
                        Logi.LogFile(Session["login"] + " - SQL: " + query1);
                    }
                    else
                    {
                        Session["blad_insert"] = "1";
                        //zapisanie do logów
                        Logi.LogFile(Session["login"] + " : błąd -> " + query1);
                        Response.Redirect("ListaEksperymentowProgramu.aspx", true);
                    }
                    Session["blad_insert"] = String.Empty;

                    //pobranie id_eksperymentu z utworzonej przed chwilą pozycji
                    string query2 = "select id_eksperymentu from EKSPERYMENT where data='" + data + "' and opis='" + opis + "'";
                    
                    Laczenie.Open();
                    using (SqlCommand command2 = Laczenie.SqlCommand(query2))
                    {
                        SqlDataReader reader2 = command2.ExecuteReader();
                        if (reader2.Read())
                        {
                            id_eksperymentu = (string)reader2.GetInt32(0).ToString();
                        }
                        else        //w przypadku jakiegoś błędu np. rozłączenia z bazą
                        {
                            Session["blad_insert"] = "1";
                            //zapisanie do logów
                            Logi.LogFile(Session["login"] + " : błąd -> " + query2);
                            Response.Redirect("ListaEksperymentowProgramu.aspx", true);
                        }
                        reader2.Close();
                        Session["blad_insert"] = String.Empty;
                    }
                    Laczenie.Close();

                    string query3 = "insert into EKSP_METODA (id_eksperymentu, id_slownika_metod) values (" + id_eksperymentu + ", " + id_slownika_metod + ")";

                    Laczenie.Open();
                    using (SqlCommand command3 = Laczenie.SqlCommand(query3))
                    {
                        wykonano2 = command3.ExecuteNonQuery();
                    }
                    Laczenie.Close();

                    if (wykonano2 > 0)
                    {
                        Session["blad_insert"] = "0";
                        //zapisanie do logów
                        Logi.LogFile(Session["login"] + " - SQL: " + query3);
                    }
                    else
                    {
                        Session["blad_insert"] = "1";
                        //zapisanie do logów
                        Logi.LogFile(Session["login"] + " : błąd -> " + query3);
                        Response.Redirect("ListaEksperymentowProgramu.aspx", true);
                    }
                    Session["blad_insert"] = String.Empty;
                }
                Response.Redirect("ListaEksperymentowProgramu.aspx", true);
            }
            else
            {
                validMetody.Visible = true;
            }            
        }

        protected void DodajMetode_Click(object sender, EventArgs e)
        {
            Response.Redirect("DodajMetode.aspx", true);
        }
    }
}