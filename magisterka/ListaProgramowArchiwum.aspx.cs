using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class ListaProgramowArchiwum : System.Web.UI.Page
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
                Session["archiwum"] = "True";
            }
        }

        protected void GridViewProgramyAut_SelectedIndexChanged(object sender, EventArgs e)
        {
            //przekazywanie parametru do następnej strony
            Session["id_programu"] = ((GridView)sender).SelectedValue.ToString();
            Session["admin_programu"] = true;
            Session["archiwum"] = "True";
            Response.Redirect("WybranyProgram.aspx", true);
        }

        protected void GridViewProgramyKoop_SelectedIndexChanged(object sender, EventArgs e)
        {
            //przekazywanie parametru do następnej strony
            Session["id_programu"] = ((GridView)sender).SelectedValue.ToString();
            Session["admin_programu"] = false;
            Session["archiwum"] = "True";
            Response.Redirect("WybranyProgram.aspx", true);
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