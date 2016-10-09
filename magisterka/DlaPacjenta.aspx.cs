using magisterka.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class DlaPacjenta : System.Web.UI.Page
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
                string id_pacjent = (string)Session["id_pacjent"];
                string dane_pacjenta = DanePacjenta.SprawdzDane(id_pacjent);

                //gdy archiwalny program
                if (!String.IsNullOrEmpty((string)Session["archiwum"]))
                {
                    WybranyProgramLabel.Text = "Wybrany program archiwalny: " + akronim;
                    WybranyPacjentLabel.Text = "Wybrany pacjent: " + dane_pacjenta;
                }
                else
                {
                    WybranyProgramLabel.Text = "Wybrany program: " + akronim;
                    WybranyPacjentLabel.Text = "Wybrany pacjent: " + dane_pacjenta;
                }
                
                Session["blad_insert"] = String.Empty;
            }
        }

        protected void Probki_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListaProbekPacjenta.aspx", true);
        }

        protected void Wyniki_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty((string)Session["archiwum"]))
            {
                Response.Redirect("ListaWynikowPacjentaArchiwum.aspx", true);
            }
            else
            {
                Response.Redirect("ListaWynikowPacjenta.aspx", true);
            }
        }
    }
}