using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class DodajZmienna : System.Web.UI.Page
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
            String jednostka;
            int nr_projektu = 0;
            int wykonano = 0;

            nazwa = TextBoxNazwaZmiennej.Text;
            jednostka = TextBoxJednostkaZmiennej.Text;

            if (DropDownListProgramy.SelectedValue == "")
            {
                Session["blad_insert"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd -> brak wybranego programu");
                Response.Redirect("ListaZmiennych.aspx", true);
            }
            else
            {
                nr_projektu = Convert.ToInt32(DropDownListProgramy.SelectedValue.ToString());
            }

            string query = "insert into SLOWNIK_ZMIENNA (nazwa_zmiennej, jednostka_zmiennej, id_projektu) values ('" + nazwa + "','" + jednostka + "'," + nr_projektu + ")";

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
                Response.Redirect("ListaZmiennych.aspx", true);
            }
            else
            {
                Session["blad_insert"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd -> " + query);
                Response.Redirect("ListaZmiennych.aspx", true);
            }
        }
    }
}