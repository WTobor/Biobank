using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class DodajGrupeProgramu : System.Web.UI.Page
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
            int id_grupa = -1;
            String nazwa_grupy;
            nazwa_grupy = TextBoxNazwaGrupy.Text;            
            int wykonano = 0;

            string id_programu = (string)Session["id_programu"];

            string query = "select id_grupa from GRUPA where nazwa_grupy='" + nazwa_grupy + "'";
            Laczenie.Open();
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    id_grupa = reader.GetInt32(0);
                }
                reader.Close();
            }
            Laczenie.Close();

            if (id_grupa != -1)
            {
                Session["istnieje_grupa"] = "1";
                Session["istnieje_grupa_projektu"] = "0";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: istnieje już grupa " + id_grupa);
                Response.Redirect("ListaGrupProgramu.aspx", true);
            }
            else
            {
                Session["istnieje_grupa"] = "0";
            }
            
            string query1 = "insert into GRUPA (nazwa_grupy) values ('" + nazwa_grupy + "')";

            Laczenie.Open();
            using (SqlCommand command1 = Laczenie.SqlCommand(query1))
            {
                wykonano = command1.ExecuteNonQuery();
            }
            Laczenie.Close();

            if (wykonano > 0)
            {
                Session["blad_insert"] = "0";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: " + query1);
                Response.Redirect("ListaGrupProgramu.aspx", true);
            }
            else
            {
                Session["blad_insert"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd -> " + query1);
                Response.Redirect("ListaGrupProgramu.aspx", true);
            }
            Session["blad_insert"] = String.Empty;
        }


    }
}