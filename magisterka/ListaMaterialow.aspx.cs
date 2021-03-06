﻿using magisterka.Classes;
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
    public partial class ListaMaterialow1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //brak dostępu niezalogowanemu użytkownikowi
            if (!String.IsNullOrEmpty((string)Session["id_uzytk"]))
            {
                string id_uzytk = (string)Session["id_uzytk"];

                //laborant nie może dodawać/edytować materiałów
                if (DaneUzytk.ZwrocRoleUser(id_uzytk) == 3)
                {
                    DodajMaterial.Visible = false;
                    GridViewMaterialy.AutoGenerateEditButton = false;
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

                if (!String.IsNullOrEmpty((string)Session["blad_insert"]))
                {
                    if ((string)Session["blad_insert"] == "0")      //nie wystąpił błąd
                    {
                        PoprAktual.Text = "Poprawnie dodano nowy materiał";
                    }
                    else if ((string)Session["blad_insert"] == "1")     //wystąpił błąd
                    {
                        PoprAktual.Text = "Nie udało się dodać nowego materiału - spróbuj ponownie";
                    }
                    Session["blad_insert"] = String.Empty;      //usuwanie sesji (komunikat już się wyświetlił)
                }

                //gdy user, a nie Admin programu
                if (Session["id_uzytk"].ToString() == "1")
                {
                    GridViewMaterialy.AutoGenerateDeleteButton = true;
                }
            }
        }

        protected void GridViewMaterialy_SelectedIndexChanged(object sender, EventArgs e)
        {
            //przekazywanie parametru do następnej strony
            Session["id_materialu"] = ((GridView)sender).SelectedValue.ToString();
            Response.Redirect("WybranyMaterial.aspx", true);
        }

        protected void DodajMaterial_Click(object sender, EventArgs e)
        {
            Response.Redirect("DodajMaterial.aspx", true);
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