﻿using magisterka.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class ListaEksperymentowProgramu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //brak dostępu niezalogowanemu użytkownikowi
            if (!String.IsNullOrEmpty((string)Session["id_uzytk"]))
            {
                string id_uzytk = (string)Session["id_uzytk"];

                //laborant nie może dodawać/edytować eksperymentów
                if (DaneUzytk.ZwrocRoleUser(id_uzytk) == 3)
                {
                    DodajEksperyment.Visible = false;
                    GridViewEksperymenty.AutoGenerateEditButton = false;
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
                PoprAktual.Text = String.Empty;

                string id_programu = (string)Session["id_programu"];
                string akronim = AkronimProgramu.SprawdzAkronim(id_programu);

                //gdy archiwalny program
                if (!String.IsNullOrEmpty((string)Session["archiwum"]))
                {
                    DodajEksperyment.Visible = false;
                    WybranyProgramLabel.Text = "Wybrany program archiwalny: " + akronim;
                    GridViewEksperymenty.AutoGenerateSelectButton = false;
                    GridViewEksperymenty.AutoGenerateEditButton = false;
                }
                else
                {
                    WybranyProgramLabel.Text = "Wybrany program: " + akronim;
                }

                if (!String.IsNullOrEmpty((string)Session["blad_insert"]))
                {
                    if ((string)Session["blad_insert"] == "0")      //nie wystąpił błąd
                    {
                        PoprAktual.Text = "Poprawnie dodano nowy eksperyment";
                    }
                    else if ((string)Session["blad_insert"] == "1")     //wystąpił błąd
                    {
                        PoprAktual.Text = "Nie udało się dodać nowego eksperymentu - spróbuj ponownie";
                    }
                    Session["blad_insert"] = String.Empty;      //usuwanie sesji (komunikat już się wyświetlił)
                }
            }
        }

        protected void DodajEksperyment_Click(object sender, EventArgs e)
        {
            Response.Redirect("DodajEksperymentProgramu.aspx", true);
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
    }
}