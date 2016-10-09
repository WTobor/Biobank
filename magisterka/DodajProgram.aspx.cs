using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class DodajProgram : System.Web.UI.Page
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
        }

        protected void DodajKlik(object sender, EventArgs e)
        {
            String akronim;
            String nazwa;
            String streszczenie;
            String cel_nauk;
            String metody;
            String efekt;
            String efekt_nowat;
            String znaczenie;
            String zespol;
            String uwagi;
            String id_uzytk;
            String id_Admin;

            akronim = TextBoxAkronim.Text;
            nazwa = TextBoxNazwaProgramu.Text;
            streszczenie = TextBoxStreszczenieProgramu.Text;
            cel_nauk = TextBoxCelNauk.Text;
            metody = TextBoxMetody.Text;
            efekt = TextBoxEfekt.Text;
            efekt_nowat = TextBoxEfektNowat.Text;
            znaczenie = TextBoxZnaczenie.Text;
            zespol = TextBoxZespol.Text;
            uwagi = TextBoxUwagi.Text;
            int wykonano = 0;
            id_uzytk = (string)Session["id_uzytk"];
            id_Admin = (string)Session["id_uzytk"];

            string query = "insert into PROJEKT (akronim, nazwa_projektu, streszczenie, cel_nauk, metody, efekt, efekt_nowat, znaczenie, zespol, uwagi, id_Admin) values ('"
            + akronim + "', '" + nazwa + "', '" + streszczenie + "', '" + cel_nauk + "', '" + metody + "', '" + efekt + "', '" + efekt_nowat + "', '" + znaczenie + "', '" + zespol + "', '" + uwagi + "', " + id_Admin + ")";

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
                Response.Redirect("ListaProgramow.aspx", true);
            }
            else
            {
                Session["blad_insert"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd -> " + query);
                Response.Redirect("ListaProgramow.aspx", true);
            }
        }

    }
}