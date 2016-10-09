using magisterka.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class ListaWynikow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BrakProbek.Text = "";
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
                GridViewWyniki.DataBind();
                DropDownListProbki.DataBind();
                SprawdzEdycjeWynikow(GridViewWyniki);
                string id_programu = (string)Session["id_programu"];
                string akronim = AkronimProgramu.SprawdzAkronim(id_programu);
                Session["blad_insert"] = String.Empty;
                string id_pacjent = (string)Session["id_pacjent"];
                string dane_pacjenta = DanePacjenta.SprawdzDane((string)Session["id_pacjent"]);

                //rozdzielenie na archiwum i bieżące jest na poprzedniej stronie
                WybranyProgramLabel.Text = "Wybrany program: " + akronim;
                WybranyPacjentLabel.Text = "Wybrany pacjent: " + dane_pacjenta;
            }

            if (DropDownListProbki.Items.Count == 0)
            {
                BrakProbek.Text = "Brak próbek dla wybranego pacjenta w wybranym programie";
                foreach (GridViewRow wiersz in GridViewWyniki.Rows)
                {
                    var komorka = wiersz.Cells[1];
                    var kom_wartosc = (TextBox)komorka.FindControl("txtwartosc");
                    var komorka2 = wiersz.Cells[2];
                    var kom2_wartosc = (Calendar)komorka2.FindControl("CalendarWynik");

                    wiersz.Enabled = false;
                    kom2_wartosc.Enabled = false;
                    kom_wartosc.Enabled = false;
                    kom_wartosc.BackColor = System.Drawing.Color.FromName("#EFF3FB");
                    kom_wartosc.BorderStyle = BorderStyle.None;
                }
            }

            if (GridViewWyniki.Rows.Count == 0)
            {
                Aktualizuj.Visible = false;
            }
        }

        protected void Aktualizuj_Click(object sender, EventArgs e)
        {
            int id_probki = 0;
            if (DropDownListProbki.SelectedItem != null)
            {
                id_probki = Int32.Parse(DropDownListProbki.SelectedItem.Value.ToString());
            }
            string id_pacjent = (string)Session["id_pacjent"];
            string id_programu = (string)Session["id_programu"];

            int liczba_zmiennych = GridViewWyniki.Rows.Count;

            foreach (GridViewRow wiersz in GridViewWyniki.Rows)
            {
                if (wiersz.Enabled)                
                {
                    var w = (TextBox)wiersz.FindControl("txtwartosc");
                    string nw_nazwa_zmiennej = wiersz.Cells[0].Text;
                    var nowa_wartosc = w.Text;
                    if (String.IsNullOrEmpty(nowa_wartosc))      //jeśli wartość nie jest uzupełniona
                    {
                        continue;
                    }
                    else
                    {
                        Calendar kal = (Calendar)wiersz.FindControl("CalendarWynik");
                        DateTime nowa_data = kal.SelectedDate;

                        string query = "SELECT nazwa_zmiennej, wartosc, ISNULL(W.data, GETDATE()) AS data FROM SLOWNIK_ZMIENNA LEFT JOIN (SELECT WYNIK.wartosc, WYNIK.data, WYNIK.id_slownik_zmiennej FROM WYNIK JOIN PROBKA ON PROBKA.id_probki = WYNIK.id_probki AND PROBKA.id_projektu=" + id_programu + " and wynik.id_probki = " + id_probki + " JOIN PACJ_PROB ON PACJ_PROB.id_probki=WYNIK.id_probki AND PACJ_PROB.id_pacjent=" + id_pacjent + ") W ON SLOWNIK_ZMIENNA.id_slownika_zmiennych=W.id_slownik_zmiennej WHERE SLOWNIK_ZMIENNA.id_projektu=" + id_programu + " AND SLOWNIK_ZMIENNA.nazwa_zmiennej='" + nw_nazwa_zmiennej + "'";

                        int id_zmiennej = 0;
                        int wykonano1 = 0;
                        int wykonano2 = 0;
                        String wartosc_baza = String.Empty;
                        DateTime? data_baza = null;               

                        bool czy_zmieniono = false;
                        bool czy_poprawnie = true;

                        Laczenie.Open();
                        using (SqlCommand command = Laczenie.SqlCommand(query))
                        {
                            SqlDataReader reader = command.ExecuteReader();
                            if (reader.Read())
                            {
                                if (!reader.IsDBNull(1))    //sprawdzenie, czy jest nullem
                                {
                                    wartosc_baza = reader.GetString(1);
                                }
                                if (wartosc_baza != nowa_wartosc)
                                {
                                    czy_zmieniono = true;
                                }

                                if (!reader.IsDBNull(2))    //sprawdzenie, czy jest nullem
                                {
                                    data_baza = reader.GetDateTime(2);
                                }
                                if (data_baza != nowa_data)
                                {
                                    czy_zmieniono = true;
                                }
                            }
                            else        //w przypadku jakiegoś błędu np. rozłączenia z bazą
                            {
                                czy_poprawnie = false;
                                //zapisanie do logów
                                Logi.LogFile(Session["login"] + " : błąd -> " + query);
                            }
                            reader.Close();
                        }
                        Laczenie.Close();

                        if (!czy_poprawnie)
                        {
                            wiersz.Cells[4].ForeColor = System.Drawing.ColorTranslator.FromHtml("Red");
                            wiersz.Cells[4].Text = "Nie udało się zaktualizować rekordu - spróbuj ponownie";
                            continue;
                        }

                        if (!czy_zmieniono)
                        {
                            continue;
                        }

                        string query1 = "SELECT id_slownika_zmiennych FROM SLOWNIK_ZMIENNA WHERE nazwa_zmiennej='" + nw_nazwa_zmiennej + "' and id_projektu=" + id_programu;
                        Laczenie.Open();
                        using (SqlCommand command1 = Laczenie.SqlCommand(query1))
                        {
                            SqlDataReader reader1 = command1.ExecuteReader();
                            if (reader1.Read())
                            {
                                id_zmiennej = reader1.GetInt32(0);
                            }
                            else        //w przypadku jakiegoś błędu np. rozłączenia z bazą
                            {
                                czy_poprawnie = false;
                                //zapisanie do logów
                                Logi.LogFile(Session["login"] + " : błąd -> " + query);
                            }
                            reader1.Close();
                        }
                        Laczenie.Close();
                        if (!czy_poprawnie)
                        {
                            wiersz.Cells[4].ForeColor = System.Drawing.ColorTranslator.FromHtml("Red");
                            wiersz.Cells[4].Text = "Nie udało się zaktualizować rekordu - spróbuj ponownie";
                            continue;
                        }

                        if (string.IsNullOrEmpty(wartosc_baza))      //brak rekordu
                        {
                            string query2 = "INSERT INTO [WYNIK] ([wartosc],[data],[id_slownik_zmiennej],[id_probki]) VALUES ('" + nowa_wartosc + "', CONVERT(DATETIME, '" + nowa_data + "'), " + id_zmiennej + ", " + id_probki + ")";
                            Laczenie.Open();
                            using (SqlCommand command2 = Laczenie.SqlCommand(query2))
                            {
                                wykonano1 = command2.ExecuteNonQuery();
                            }
                            Laczenie.Close();

                            if (wykonano1 <= 0) //w przypadku jakiegoś błędu np. rozłączenia z bazą
                            {
                                czy_poprawnie = false;
                                //zapisanie do logów
                                Logi.LogFile(Session["login"] + " : błąd -> " + query);
                            }
                            if (!czy_poprawnie)
                            {
                                wiersz.Cells[4].ForeColor = System.Drawing.ColorTranslator.FromHtml("Red");
                                wiersz.Cells[4].Text = "Nie udało się zaktualizować rekordu - spróbuj ponownie";
                                continue;
                            }
                        }
                        else    //update rekordu
                        {
                            string query3 = "UPDATE WYNIK SET wartosc='" + nowa_wartosc + "', data=CONVERT(DATETIME, '" + nowa_data + "') WHERE id_probki=" + id_probki + " AND id_slownik_zmiennej=" + id_zmiennej;
                            Laczenie.Open();
                            using (SqlCommand command3 = Laczenie.SqlCommand(query3))
                            {
                                wykonano2 = command3.ExecuteNonQuery();
                            }
                            Laczenie.Close();

                            if (wykonano2 <= 0)
                            {
                                czy_poprawnie = false;
                                //zapisanie do logów
                                Logi.LogFile(Session["login"] + " : błąd -> " + query);
                            }
                            Laczenie.Close();
                            if (!czy_poprawnie)
                            {
                                wiersz.Cells[4].ForeColor = System.Drawing.ColorTranslator.FromHtml("Red");
                                wiersz.Cells[4].Text = "Nie udało się zaktualizować rekordu - spróbuj ponownie";
                                continue;
                            }
                        }

                        //wykona się, jeśli wszystko było ok
                        wiersz.Cells[4].ForeColor = System.Drawing.ColorTranslator.FromHtml("Green");
                        wiersz.Cells[4].Text = "Poprawnie zaktualizowano rekord";
                    }
                }                
            }
        }

        protected void GridViewWyniki_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow wiersz = GridViewWyniki.Rows[e.RowIndex];
            string nazwa_zmiennej = ((TextBox)(wiersz.Cells[1].Controls[0])).Text;

            TextBox wartosc = (TextBox)GridViewWyniki.Rows[e.RowIndex].FindControl("wartosc");
            String wrt = wartosc.ToString();

            Calendar kal = (Calendar)GridViewWyniki.Rows[e.RowIndex].FindControl("CalendarWyniki");
            DateTime data = kal.SelectedDate;


        }

        protected int  PobierzIdProbki(string numer, string nazwa)
        {
            string query = "SELECT [id_probki] FROM [dbo].[PROBKA] WHERE nazwa = '" + nazwa + "' AND numer = '" + numer + "'";
            int id_probki = -1;
            Laczenie.Open();
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    id_probki = reader.GetInt32(0);
                }
                reader.Close();
            }
            Laczenie.Close();
            return id_probki;
        }

        protected bool WynikZWybranejProbki(string nazwa_zmiennej, string wartosc, int id_probki)
        {
            string id_programu = (string)Session["id_programu"];
            string id_pacjent = (string)Session["id_pacjent"];


            string query = "SELECT WYNIK.id_probki FROM WYNIK RIGHT JOIN SLOWNIK_ZMIENNA ON SLOWNIK_ZMIENNA.id_slownika_zmiennych=WYNIK.id_slownik_zmiennej LEFT JOIN PROBKA ON PROBKA.id_probki = WYNIK.id_probki LEFT JOIN PACJ_PROB ON PACJ_PROB.id_probki=WYNIK.id_probki LEFT JOIN PACJENT ON PACJENT.id_pacjent=PACJ_PROB.id_pacjent WHERE PACJENT.id_pacjent=" + id_pacjent + " AND PROBKA.id_projektu=" + id_programu + " AND WYNIK.wartosc='" + wartosc + "' AND nazwa_zmiennej='" + nazwa_zmiennej + "'";

            int db_id_probki = 0;
            Laczenie.Open();
            using (SqlCommand command1 = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command1.ExecuteReader();
                if (reader.Read())
                {
                    db_id_probki = reader.GetInt32(0);
                }
                reader.Close();
            }
            Laczenie.Close();

            return Int32.Equals(id_probki, db_id_probki);
        }

        protected void SprawdzEdycjeWynikow(GridView GridViewWyniki)
        {

            string numer = string.Empty;
            string nazwa = string.Empty;
            if (DropDownListProbki.SelectedItem != null && DropDownListProbki.SelectedItem.Text != null)
            {
                numer = DropDownListProbki.SelectedItem.Text.Split(',')[0];
                nazwa = DropDownListProbki.SelectedItem.Text.Split(',')[1];
                numer = Regex.Replace(numer, @"\s", "");
                nazwa = Regex.Replace(nazwa, @"\s", "");
            }
            int id_probki = PobierzIdProbki(numer, nazwa);

            foreach (GridViewRow wiersz in GridViewWyniki.Rows)
            {
                string id_uzytk = (string)Session["id_uzytk"];
                var kom_wartosc = (TextBox)wiersz.FindControl("txtwartosc");
                String wartosc = string.Empty;
                if (kom_wartosc != null)
                {
                    wartosc = kom_wartosc.Text;
                }
                string nazwa_zmiennej = wiersz.Cells[0].Text;
                if (wartosc != "")
                {
                    //lekarz nie może dodawać/edytować wyników
                    var id_probki_wiersza = ((Label)wiersz.FindControl("id_probki")).Text;
                    if (DaneUzytk.ZwrocRoleUser(id_uzytk) != 2 && WynikZWybranejProbki(nazwa_zmiennej, wartosc, id_probki))
                    {
                        wiersz.Enabled = true;
                    }
                    else
                    {
                        wiersz.Enabled = false;
                        kom_wartosc.BackColor = System.Drawing.Color.FromName("#EFF3FB");
                        kom_wartosc.BorderStyle = BorderStyle.None;
                    }
                }
                else
                {
                    if (DaneUzytk.ZwrocRoleUser(id_uzytk) == 2)
                    {
                        wiersz.Enabled = false;
                        kom_wartosc.BackColor = System.Drawing.Color.FromName("#EFF3FB");
                        kom_wartosc.BorderStyle = BorderStyle.None;
                    }
                }
            }
        }

        protected void DropDownListProbki_SelectedIndexChanged(object sender, EventArgs e)
        {
            SprawdzEdycjeWynikow(GridViewWyniki);
        }

        protected void WrocDoPacjenta_Click(object sender, EventArgs e)
        {
            string id_pacjent = (string)Session["id_pacjent"];
            Response.Redirect("DlaPacjenta.aspx", true);
        }

        protected void WrocDoPacjentow_Click(object sender, EventArgs e)
        {
            string id_programu = (string)Session["id_programu"];
            Response.Redirect("ListaPacjentowProgramu.aspx", true);
        }
    }
}