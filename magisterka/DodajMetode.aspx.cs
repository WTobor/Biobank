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
    public partial class DodajMetode : System.Web.UI.Page
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
                Session["blad_insert"] = String.Empty;
            }
        }
       
        protected void Dodaj_Click(object sender, EventArgs e)
        {
            String nazwa;
            String slowa_klucz;
            String opis;
            String uwagi;
            int wykonano = 0;

            string id_uzytk = (string)Session["id_uzytk"];

            nazwa = TextBoxNazwaMetody.Text;
            slowa_klucz = TextBoxSlowaKlucz.Text;
            opis = TextBoxOpisMetody.Text;
            uwagi = TextBoxUwagi.Text;

            string query = "insert into SLOWNIK_METOD (nazwa_metody, opis_metody, slowa_klucz, uwagi, id_uzytk) values ('" + nazwa + "', '" + opis + "', '" + slowa_klucz + "', '" + uwagi + "', " + id_uzytk + ")";

            Laczenie.Open();
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                wykonano = command.ExecuteNonQuery();
            }
            Laczenie.Close();

            if (wykonano > 0)
            {
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: " + query);
                Response.Redirect("DodajEksperymentProgramu.aspx", true);
            }
            else
            {
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd -> " + query);
                Response.Redirect("DodajEksperymentProgramu.aspx", true);
            }
        }
    }
}