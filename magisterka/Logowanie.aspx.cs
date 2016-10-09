using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class Logowanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            #region KodAktyw
            if (!String.IsNullOrEmpty(HttpContext.Current.Request.Params["KodAktyw"]))
            {
                int roznica = 0;
                string kod_aktyw = HttpContext.Current.Request.Params["KodAktyw"];
                Laczenie.Initialize();
                Laczenie.Open();
                string query0 = "select data_kodu from [dbo].[UZYTK_AKTYW] where kod_aktyw='" + kod_aktyw + "'";
                DateTime data_dzis = DateTime.Today;
                DateTime data_kodu = DateTime.MinValue;

                Laczenie.Open();
                using (SqlCommand command0 = Laczenie.SqlCommand(query0))
                {
                    SqlDataReader reader0 = command0.ExecuteReader();
                    if (reader0.Read())
                    {
                        data_kodu = Convert.ToDateTime(reader0[0]);
                    }
                    else    //nie ma już takiego kodu (usunięty)
                    {
                        LabelRejestracja.ForeColor = System.Drawing.ColorTranslator.FromHtml("Red");
                        LabelRejestracja.Text = "Link został wykorzystany";
                        LabelRejestracja.Visible = true;
                        return;
                    }
                    reader0.Close();
                }
                Laczenie.Close();

                roznica = (data_dzis.Date - data_kodu.Date).Days;

                if (roznica > 3)
                {
                    LabelRejestracja.ForeColor = System.Drawing.ColorTranslator.FromHtml("Red");
                    LabelRejestracja.Text = "Link nie jest aktualny - spróbuj zarejestrować się ponownie";
                    LabelRejestracja.Visible = true;
                    return;
                }
                else
                {
                    LabelRejestracja.Visible = false;
                }

                string query = "select id_uzytk from [dbo].[UZYTK_AKTYW] where kod_aktyw='" + kod_aktyw + "'";
                int id_uzytk = -1;

                Laczenie.Open();
                using (SqlCommand command = Laczenie.SqlCommand(query))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        id_uzytk = reader.GetInt32(0);
                        //zapisanie do logów
                        Logi.LogFile("Prawidłowy kod aktywacyjny: " + kod_aktyw);
                    }
                    else
                    {
                        //zapisanie do logów
                        Logi.LogFile("Nieprawidłowy kod aktywacyjny: " + kod_aktyw);
                        LabelWylogowane.Text = "Kod aktywacyjny jest nieprawidłowy";
                        LabelWylogowane.ForeColor = System.Drawing.ColorTranslator.FromHtml("Red");
                        LabelWylogowane.Visible = true;
                    }
                    reader.Close();
                }
                Laczenie.Close();

                int wynikInsert1 = 0;
                int wynikInsert2 = 0;
                if (id_uzytk > 0)
                {
                    string query1 = "UPDATE [UZYTK] SET [aktywny] = 'True' where id_uzytk = " + id_uzytk;
                    Laczenie.Open();
                    using (SqlCommand command1 = Laczenie.SqlCommand(query1))
                    {
                        wynikInsert1 = command1.ExecuteNonQuery();
                        //zapisanie do logów
                        Logi.LogFile("Aktywacja użytkownika - SQL: " + query1);
                    }
                    Laczenie.Close();
                }

                if (wynikInsert1 > 0)
                {
                    string query2 = "delete from [dbo].[UZYTK_AKTYW] where id_uzytk = " + id_uzytk;
                    Laczenie.Open();
                    using (SqlCommand command2 = Laczenie.SqlCommand(query2))
                    {
                        wynikInsert2 = command2.ExecuteNonQuery();
                        //zapisanie do logów
                        Logi.LogFile("Aktywacja użytkownika - SQL: " + query2);
                    }
                    Laczenie.Close();
                }

                if (wynikInsert2 > 0)
                {
                    //zapisanie do logów
                    Logi.LogFile("Prawidłowo aktywowano użytkownika: " + id_uzytk);
                    LabelWylogowane.Text = "Konto zostało aktywowane";
                    LabelWylogowane.Visible = true;
                }
                else
                {
                    //zapisanie do logów
                    Logi.LogFile("Nie aktywowano użytkownika: " + id_uzytk);
                    LabelWylogowane.Text = "Konto nie zostało aktywowane";
                    LabelWylogowane.ForeColor = System.Drawing.ColorTranslator.FromHtml("Red");
                    LabelWylogowane.Visible = true;
                }
            }
            #endregion KodAktyw
            else
            {
                LabelWylogowane.Visible = false;
                if ((!String.IsNullOrEmpty((string)Session["id_uzytk"])) & (!String.IsNullOrEmpty((string)Session["login"])))
                {
                    //usuwanie sesji - wylogowanie
                    Session["id_uzytk"] = string.Empty;
                    //zapisanie do logów
                    Logi.LogFile("Poprawnie wylogowano: " + Session["login"]);
                    //c.d. usuwania sesji
                    Session["login"] = string.Empty;
                    LabelWylogowane.Text = "Poprawnie wylogowano";
                    LabelWylogowane.Visible = true;
                }
                else
                {
                    if (!String.IsNullOrEmpty((string)Session["rejestracja"]))
                    {
                        if (!String.IsNullOrEmpty((string)Session["rejestracja"]) == true)
                        {
                            LabelRejestracja.Visible = true;
                            LabelRejestracja.Text = "Poprawnie zarejestrowano";
                            Session["rejestracja"] = String.Empty;  //tylko raz się wyświetli ten komunikat
                            LabelWyslanoMaila.Visible = true;
                        }
                        else if (!String.IsNullOrEmpty((string)Session["rejestracja"]) == false)
                        {
                            LabelWyslanoMaila.Text = "Wystąpił błąd - spróbuj ponownie";
                            LabelWyslanoMaila.ForeColor = System.Drawing.ColorTranslator.FromHtml("Red");
                            Session["rejestracja"] = String.Empty;  //tylko raz się wyświetli ten komunikat
                            LabelWyslanoMaila.Visible = true;
                        }
                    }
                    else
                    {
                        if (!String.IsNullOrEmpty((string)Session["brak_dostepu"]))
                        {
                            Session["brak_dostepu"] = String.Empty;  //tylko raz się wyświetli ten komunikat
                            LabelBrakDostepu.Visible = true;
                        }
                    }
                }
            }
            LabelNiepoprawneLogowanie.Visible = false;
        }

        protected void ZalogujKlik(object sender, EventArgs e)
        {
            LabelBrakDostepu.Visible = false;
            LabelWyslanoMaila.Visible = false;
            if (!String.IsNullOrEmpty(HttpContext.Current.Request.Params["KodAktyw"]))
            {
                LabelWylogowane.Visible = false;
                LabelRejestracja.Visible = false;
            }

            String login;
            String haslo;
            login = LoginTextBox.Text.ToString();
            haslo = HasloTextBox.Text.ToString();
            String id_uzytk = string.Empty;
            String login_uzytk = string.Empty;
            String haslo_uzytk = string.Empty;
            String aktywny = string.Empty;

            string query = "select id_uzytk, login, haslo, aktywny from [dbo].[UZYTK] where login='" + login + "'";

            Laczenie.Initialize();
            Laczenie.Open();
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    id_uzytk = reader.GetInt32(0).ToString();
                    login_uzytk = reader.GetString(1).ToString();
                    haslo_uzytk = reader.GetString(2).ToString();
                    aktywny = reader.GetBoolean(3).ToString();
                }
                reader.Close();
            }
            Laczenie.Close();

            if (aktywny == "False")
            {
                LabelBrakDostepu.Text = "Brak dostępu: nieaktywny login (sprawdź maila z linkiem aktywacyjnym)";
                LabelBrakDostepu.Visible = true;
                //zapisanie do logów
                Logi.LogFile("Nieaktywny login: " + login);
            }
            else
            {
                if (!String.IsNullOrEmpty(haslo) && haslo == haslo_uzytk &&
                !String.IsNullOrEmpty(login) && login == login_uzytk)
                {
                    //przekazywanie parametru do następnej strony
                    Session["id_uzytk"] = id_uzytk;
                    Session["login"] = login;

                    //zapisanie do logów
                    Logi.LogFile("Poprawnie zalogowano: " + login);
                    Response.Redirect("ListaProgramow.aspx", true);
                }
                else
                {
                    LabelNiepoprawneLogowanie.Visible = true;
                }        
            } 
        }

        protected void ZarejestrujKlik(object sender, EventArgs e)
        {
            Response.Redirect("Rejestracja.aspx", true);
        }

        protected void ZapomnHasla_Click(object sender, EventArgs e)
        {
            String login;
            login = LoginTextBox.Text.ToString();
            String id_uzytk = string.Empty;
            String aktywny = string.Empty;
            
            string query = "select id_uzytk, aktywny from [dbo].[UZYTK] where login='" + login + "'";

            Laczenie.Initialize();
            Laczenie.Open();
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    id_uzytk = reader.GetInt32(0).ToString();
                    aktywny = reader.GetBoolean(1).ToString();
                }
                reader.Close();
            }
            Laczenie.Close();

            if (aktywny == "False")
            {
                LabelBrakDostepu.Text = "Brak dostępu: nieaktywny login (sprawdź maila z linkiem aktywacyjnym)";
                LabelBrakDostepu.Visible = true;
                //zapisanie do logów
                Logi.LogFile("Nieaktywny login: " + login);
            }
            else
            {
                int wynik_insert = 0;
                LabelBrakDostepu.Visible = false;
                var wynik = WysylanieMaila.Wysylanie(login);
                if (wynik.Item1 == false)    //jakiś błąd po drodze
                {
                    LabelBrakDostepu.Text = wynik.Item2;
                    LabelBrakDostepu.Visible = true;
                }
                else
                {
                    LabelBrakDostepu.Visible = false;
                    LabelWylogowane.Visible = false;
                    LabelRejestracja.Visible = false;
                    String nowe_haslo = GenerujHaslo.Generuj();

                    string query1 = "UPDATE [dbo].[UZYTK] SET haslo = '" + nowe_haslo + "' where login='" + login + "'";

                    Laczenie.Open();
                    using (SqlCommand command1 = Laczenie.SqlCommand(query1))
                    {
                        wynik_insert = command1.ExecuteNonQuery();
                        //zapisanie do logów
                        Logi.LogFile("Zmiana hasła - SQL: " + query1);
                    }
                    Laczenie.Close();

                    if (wynik_insert > 0)
                    {
                        bool wyslane = WysylanieMaila.Mail("biobank@op.pl", wynik.Item3, "Reset hasła", "Nowe hasło to " + nowe_haslo);
                        if (wyslane)
                        {
                            LabelWyslanoMaila.Visible = true;
                            //zapisanie do logów
                            Logi.LogFile("Zmiana hasła: " + login + " - wysłano maila z nowym hasłem");
                        }
                        else
                        {
                            //zapisanie do logów
                            Logi.LogFile("Nieudana zmiana hasła (mail nie został wysłany): " + login);
                            LabelWyslanoMaila.Text = "Wystąpił błąd - spróbuj ponownie";
                            LabelWyslanoMaila.ForeColor = System.Drawing.ColorTranslator.FromHtml("Red");
                            LabelWyslanoMaila.Visible = true;
                        }
                    }
                    else
                    {
                        //zapisanie do logów
                        Logi.LogFile("Nieudana zmiana hasła (update nie został wykonany): " + login);
                        LabelBrakDostepu.Text = "Wystąpił błąd - spróbuj ponownie";
                        LabelBrakDostepu.Visible = true;
                    }
                }
            }
        }
    }
}