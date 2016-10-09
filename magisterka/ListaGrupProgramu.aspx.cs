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
    public partial class ListaGrupProgramu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //brak dostępu niezalogowanemu użytkownikowi
            if (!String.IsNullOrEmpty((string)Session["id_uzytk"]))
            {
                string id_uzytk = (string)Session["id_uzytk"];

                //laborant nie może dodawać/edytować grup
                if (DaneUzytk.ZwrocRoleUser(id_uzytk) == 3)
                {
                    DodajGrupe.Visible = false;
                    GridViewGrupy.AutoGenerateEditButton = false;
                }
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

                PoprAktual.Text = String.Empty;

                //gdy archiwalny program
                if (!String.IsNullOrEmpty((string)Session["archiwum"]))
                {
                    DodajGrupe.Visible = false;
                    DropDownListGrupy.Visible = false;
                    WybierzZListy.Visible = false;
                    LabelNapis.Visible = false;
                    WybranyProgramLabel.Text = "Wybrany program archiwalny: " + akronim;
                    GridViewGrupy.AutoGenerateEditButton = false;
                }
                else
                {
                    WybranyProgramLabel.Text = "Wybrany program: " + akronim;
                }

                //gdy user, a nie Admin programu
                if ((bool)Session["admin_programu"] == false)
                {
                    DodajGrupe.Visible = false;
                    DropDownListGrupy.Visible = false;
                    WybierzZListy.Visible = false;
                    LabelNapis.Visible = false;
                }

                //gdy jesteśmy w trakcie dodawania pacjenta
                if ((String)Session["pacjent_grupy"] == "1")
                {
                    GridViewGrupy.AutoGenerateSelectButton = true;
                }
                else
                {
                    GridViewGrupy.AutoGenerateSelectButton = false;
                }

                if (!String.IsNullOrEmpty((string)Session["blad_insert"]))
                {
                    if ((string)Session["blad_insert"] == "0")      //nie wystąpił błąd
                    {
                        PoprAktual.ForeColor = System.Drawing.ColorTranslator.FromHtml("green");
                        PoprAktual.Text = "Poprawnie dodano nową grupę";
                    }
                    else if ((string)Session["blad_insert"] == "1")     //wystąpił błąd
                    {
                        PoprAktual.ForeColor = System.Drawing.ColorTranslator.FromHtml("red");
                        PoprAktual.Text = "Nie udało się dodać nowej grupy - spróbuj ponownie";
                    }
                    Session["blad_insert"] = String.Empty;      //usuwanie sesji (komunikat już się wyświetlił)
                }

                if ((string)Session["istnieje_grupa"] == "1")
                {
                    PoprAktual.ForeColor = System.Drawing.ColorTranslator.FromHtml("red");
                    PoprAktual.Text = "Istnieje grupa o podanej nazwie";
                    Session["istnieje_grupa"] = String.Empty;      //usuwanie sesji (komunikat już się wyświetlił)
                }

                if ((string)Session["brak_grupy"] == "1")
                {
                    PoprAktual.ForeColor = System.Drawing.ColorTranslator.FromHtml("red");
                    PoprAktual.Text = "Brak wybranej grupy - spróbuj ponownie";
                    Session["brak_grupy"] = String.Empty;      //usuwanie sesji (komunikat już się wyświetlił)
                }

                if ((string)Session["istnieje_grupa_projektu"] == "1")
                {
                    PoprAktual.ForeColor = System.Drawing.ColorTranslator.FromHtml("red");
                    PoprAktual.Text = "Istnieje grupa o podanej nazwie w projekcie";
                    Session["istnieje_grupa_projektu"] = String.Empty;      //usuwanie sesji (komunikat już się wyświetlił)
                }

                DropDownListGrupy.DataBind();
                DropDownListGrupy.Items.Insert(0, new ListItem(string.Empty, string.Empty));
                DropDownListGrupy.SelectedIndex = 0;

                //gdy brak listy grup
                if ((string)Session["pacjent_grupy"] == "1")
                {
                    GridViewGrupy.AutoGenerateSelectButton = true;
                }
            }

        }

        protected void DodajGrupe_Click(object sender, EventArgs e)
        {
            Response.Redirect("DodajGrupeProgramu.aspx", true);
        }

        //sprawdzanie, czy wykonano aktualizację
        protected void Aktualizacja(Object source, SqlDataSourceStatusEventArgs e)
        {
            var akt = Aktualizuj.Aktualizacja(e.AffectedRows);
            PoprAktual.Text = akt.Item1;
            PoprAktual.ForeColor = System.Drawing.ColorTranslator.FromHtml(akt.Item2);
            //zapisanie do logów
            Logi.LogFile(Session["login"] + ": " + akt.Item1);
        }

        protected void WybierzZListy_Click(object sender, EventArgs e)
        {
            int id_grupa = -1;
            int wykonano = 0;
            int id_grupa_proj = -1;
            string id_programu = (string)Session["id_programu"];

            //pobranie id_grupy z wybranej przed chwilą pozycji
            string query = "select id_grupa from GRUPA where nazwa_grupy='" + DropDownListGrupy.SelectedValue.ToString() + "'";

            Laczenie.Open();
            using (SqlCommand command2 = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command2.ExecuteReader();
                if (reader.Read())
                {
                    id_grupa = reader.GetInt32(0);
                }
                else        //w przypadku jakiegoś błędu np. rozłączenia z bazą
                {
                    Session["blad_insert"] = "1";
                    //zapisanie do logów
                    Logi.LogFile(Session["login"] + " : błąd -> " + query);
                    Response.Redirect("ListaGrupProgramu.aspx", true);
                }
                reader.Close();
                Session["blad_insert"] = String.Empty;
            }
            Laczenie.Close();

            if (id_grupa != -1)
            {
                Session["brak_grupy"] = "0";
            }
            else
            {
                Session["brak_grupy"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: brak grupy " + id_grupa);
                Response.Redirect("ListaGrupProgramu.aspx", true);
            }


            string query1 = "select id_grupa_proj from GRUPA_PROJ where id_grupa='" + id_grupa + "' and id_projekt='" + id_programu + "'";

            Laczenie.Open();
            using (SqlCommand command1 = Laczenie.SqlCommand(query1))
            {
                SqlDataReader reader1 = command1.ExecuteReader();
                if (reader1.Read())
                {
                    id_grupa_proj = reader1.GetInt32(0);
                }
                reader1.Close();
            }
            Laczenie.Close();

            if (id_grupa_proj > -1)
            {
                Session["istnieje_grupa_projektu"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: istnieje już taka grupa " + id_grupa + " w projekcie");
                Response.Redirect("ListaGrupProgramu.aspx", true);
            }
            else
            {
                Session["istnieje_grupa_projektu"] = "0";
            }

            string query2 = "insert into GRUPA_PROJ (id_grupa, id_projekt) values (" + id_grupa + ", " + id_programu + ")";

            Laczenie.Open();
            using (SqlCommand command2 = Laczenie.SqlCommand(query2))
            {
                wykonano = command2.ExecuteNonQuery();
            }
            Laczenie.Close();

            if (wykonano > 0)
            {
                GridViewGrupy.DataBind();
                PoprAktual.Text = "Poprawnie dodano grupę do programu";
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

        protected void GridViewGrupy_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["id_grupy"] = GridViewGrupy.SelectedDataKey.Value.ToString();
            Response.Redirect("DodajPacjentaProgramu.aspx", true);
        }
    }
}