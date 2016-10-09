using magisterka.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class ListaWynikowPacjentaArchiwum : System.Web.UI.Page
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
                Session["blad_insert"] = String.Empty;
                string id_pacjent = (string)Session["id_pacjent"];
                string dane_pacjenta = DanePacjenta.SprawdzDane((string)Session["id_pacjent"]);

                WybranyProgramLabel.Text = "Wybrany program archiwalny: " + akronim;
                WybranyPacjentLabel.Text = "Wybrany pacjent: " + dane_pacjenta;
            }
        }
    }
}