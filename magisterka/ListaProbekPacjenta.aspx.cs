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
    public partial class ListaProbekProgramu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //brak dostępu niezalogowanemu użytkownikowi
            if (!String.IsNullOrEmpty((string)Session["id_uzytk"]))
            {
                string id_uzytk = (string)Session["id_uzytk"];
                
                //lekarz nie może dodawać/edytować próbki
                if (DaneUzytk.ZwrocRoleUser(id_uzytk) == 2)
                {
                    DodajProbke.Visible = false;
                    GridViewProbki.AutoGenerateEditButton = false;
                }
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
                Session["blad_insert"] = String.Empty;
                PoprAktual.Text = String.Empty;
                string id_pacjent = (string)Session["id_pacjent"];
                string dane_pacjenta = DanePacjenta.SprawdzDane((string)Session["id_pacjent"]);

                //gdy archiwalny program
                if (!String.IsNullOrEmpty((string)Session["archiwum"]))
                {
                    DodajProbke.Visible = false;
                    WybranyProgramLabel.Text = "Wybrany program archiwalny: " + akronim;
                    WybranyPacjentLabel.Text = "Wybrany pacjent: " + dane_pacjenta;
                    GridViewProbki.AutoGenerateSelectButton = false;
                    GridViewProbki.AutoGenerateEditButton = false;
                }
                else
                {
                    WybranyProgramLabel.Text = "Wybrany program: " + akronim;
                    WybranyPacjentLabel.Text = "Wybrany pacjent: " + dane_pacjenta;
                }

                if (!String.IsNullOrEmpty((string)Session["blad_insert"]))
                {
                    if ((string)Session["blad_insert"] == "0")      //nie wystąpił błąd
                    {
                        PoprAktual.Text = "Poprawnie dodano nową próbkę";
                    }
                    else if ((string)Session["blad_insert"] == "1")     //wystąpił błąd
                    {
                        PoprAktual.Text = "Nie udało się dodać nowej próbki - spróbuj ponownie";
                    }
                    Session["blad_insert"] = String.Empty;      //usuwanie sesji (komunikat już się wyświetlił)
                }


            }
        }

        protected void DodajProbke_Click(object sender, EventArgs e)
        {
            //przekazywanie parametru do następnej strony
            Session["dodawanie_probki"] = "true";
            Response.Redirect("DodajProbkePacjenta.aspx", true);
        }

        //sprawdzanie, czy wykonano aktualizację
        protected void Aktualizacja(Object source, SqlDataSourceStatusEventArgs e)
        {
            var akt = Aktualizuj.Aktualizacja(e.AffectedRows);
            PoprAktual.Text = akt.Item1;
            PoprAktual.ForeColor = System.Drawing.ColorTranslator.FromHtml(akt.Item2);
            //zapisanie do logów
            Logi.LogFile(Session["login"] + ": " + akt.Item1);
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