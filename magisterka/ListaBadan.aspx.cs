using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class ListaBadan : System.Web.UI.Page
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
                string select = "SELECT nazwa as Nazwa FROM slownik_wynikow";

                using (SqlCommand command = Laczenie.SqlCommand(select))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        CheckBoxListWyniki.Items.Add(new ListItem(reader[0].ToString()));
                    }
                    reader.Close();
                    reader.Dispose();
                }
                Laczenie.Close();
            }
        }

        protected void ListaWynikow_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListaWynikow.aspx", true);
        }
    }
}