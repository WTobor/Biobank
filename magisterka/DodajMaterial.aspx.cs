using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class DodajMaterial : System.Web.UI.Page
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
                Session["blad_insert"] = String.Empty;
            }
        }

        protected void DodajKlik(object sender, EventArgs e)
        {
            String nazwa;
            int wykonano = 0;

            nazwa = TextBoxNazwaMaterialu.Text;

            string query = "insert into SLOWNIK_MATERIALOW (nazwa_materialu) values ('" + nazwa + "')";
            Laczenie.Open();
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: " + query);
                wykonano = command.ExecuteNonQuery();
            }
            Laczenie.Close();

            if (wykonano > 0)
            {
                Session["blad_insert"] = "0";
                Response.Redirect("ListaMaterialow.aspx", true);
            }
            else
            {
                Session["blad_insert"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd -> " + query);
                Response.Redirect("ListaMaterialow.aspx", true);
            }
            Session["blad_insert"] = String.Empty;
        }
    }
}