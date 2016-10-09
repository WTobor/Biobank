using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class ZmianaHasla : System.Web.UI.Page
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

        protected void Zmien_Click(object sender, EventArgs e)
        {
            string id_uzytk = (string)Session["id_uzytk"];

            String nowe_haslo;
            nowe_haslo = TextBoxHaslo.Text;

            //inicjalizacja połączenia
            Laczenie.Initialize();
            Laczenie.Open();
            string query = "UPDATE [dbo].[UZYTK] SET [haslo] = '" + nowe_haslo + "' WHERE [id_uzytk] = " + id_uzytk;

            SqlCommand command = Laczenie.SqlCommand(query);
            command.ExecuteNonQuery();

            //zapisanie do logów
            Logi.LogFile("Poprawnie zmieniono hasło: " + Session["login"]);
            Response.Redirect("Konto.aspx", true);
        }
    }
}