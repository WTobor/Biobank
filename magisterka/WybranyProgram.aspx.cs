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
    public partial class WybranyProgram : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool kontynuuj = false;
            //brak dostępu niezalogowanemu użytkownikowi
            if (!String.IsNullOrEmpty((string)Session["id_uzytk"]))
            {
                string id_uzytk = (string)Session["id_uzytk"];
                kontynuuj = true;
            }
            else
            {
                Session["brak_dostepu"] = "true";
                Response.Redirect("Logowanie.aspx", true);
            }

            //wykona się tylko za pierwszym razem
            if (!IsPostBack)
            {
                bool admin_programu = (bool)Session["admin_programu"];

                if (kontynuuj == true)
                {
                    string id_programu = (string)Session["id_programu"];
                    string akronim = AkronimProgramu.SprawdzAkronim(id_programu);
                    if ((string)Session["archiwum"] == "True")
                    {
                        WybranyProgramLabel.Text = "Wybrany program archiwalny: " + akronim;
                    }
                    else
                    {
                        WybranyProgramLabel.Text = "Wybrany program: " + akronim;
                    }
                }
            }
        }

        protected void Uczestnicy_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListaUczestnikowProgramu.aspx", true);
        }

        protected void Eksperymenty_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListaEksperymentowProgramu.aspx", true);
        }

        protected void Literatura_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListaLiteraturyProgramu.aspx", true);
        }

        protected void Grupy_Click(object sender, EventArgs e)
        {
            bool admin_programu = (bool)Session["admin_programu"];
            Session["pacjent_grupy"] = String.Empty;
            Response.Redirect("ListaGrupProgramu.aspx", true);
        }

        protected void Pacjenci_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListaPacjentowProgramu.aspx", true);
        }

        protected void Raport_Click(object sender, EventArgs e)
        {
            Response.Redirect("RaportProgramu.aspx", true);
        }
    }
}