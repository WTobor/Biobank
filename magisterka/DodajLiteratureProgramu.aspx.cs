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
    public partial class DodajLiteratureProgramu : System.Web.UI.Page
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

                int rok_akt = Int32.Parse(DateTime.Today.Year.ToString());
                for (int i = 1990; i <= rok_akt; i++)
                    DropDownListLata.Items.Add(new ListItem(i.ToString(), i.ToString()));

                Session["blad_insert"] = String.Empty;
            }
        }

        protected void DodajKlik(object sender, EventArgs e)
        {
            String autorzy;
            String tytul;
            String czasopismo;
            String rok_wydania;
            String www;
            String tresc;
            int wykonano = 0;

            autorzy = TextBoxAutorzy.Text.ToString();
            tytul = TextBoxTytul.Text.ToString();
            czasopismo = TextBoxCzasop.Text.ToString();
            www = TextBoxWww.Text.ToString();
            tresc = TextBoxTresc.Text.ToString();
            rok_wydania = DropDownListLata.SelectedItem.Value.ToString();

            string id_programu = (string)Session["id_programu"];

            string query = "insert into LITERATURA (autorzy, tytul, czasopismo, rok_wydania, www, tresc, id_projektu) values ('"
            + autorzy + "', '" + tytul + "', '" + czasopismo + "', '" + rok_wydania + "', '" + www + "', '" + tresc + "', '" + id_programu + "')";

            Laczenie.Open();
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                wykonano = command.ExecuteNonQuery();
            }
            Laczenie.Close();

            if (wykonano > 0)
            {
                Session["blad_insert"] = "0";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: " + query);
                Response.Redirect("ListaLiteraturyProgramu.aspx", true);
            }
            else
            {
                Session["blad_insert"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd -> " + query);
                Response.Redirect("ListaLiteraturyProgramu.aspx", true);
            }
            Session["blad_insert"] = String.Empty;
        }
    }
}