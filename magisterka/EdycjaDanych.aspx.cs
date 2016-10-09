using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class EdycjaDanych : System.Web.UI.Page
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
                String imie = String.Empty;
                String nazwisko = String.Empty;
                String telefon = String.Empty;
                String email = String.Empty;
                String id_jednostka = String.Empty;
                String nazwa_jednostki = String.Empty;
                string id_uzytk = (string)Session["id_uzytk"];

                string query = "select [UZYTK].imie, [UZYTK].nazwisko, [UZYTK].tel_kom, [UZYTK].e_mail, [UZYTK].id_jednostka, JEDNOSTKA.nazwa_nadrz, JEDNOSTKA.nazwa_podrz  from [dbo].[UZYTK] JOIN [dbo].JEDNOSTKA ON JEDNOSTKA.id_jednostki = [UZYTK].id_jednostka where id_uzytk=" + id_uzytk;

                //inicjalizacja połączenia
                Laczenie.Initialize();
                Laczenie.Open();
                using (SqlCommand command1 = Laczenie.SqlCommand(query))
                {
                    SqlDataReader reader = command1.ExecuteReader();
                    while (reader.Read())
                    {
                        imie = reader.GetValue(0).ToString();
                        nazwisko = reader.GetValue(1).ToString();
                        telefon = reader.GetValue(2).ToString();
                        email = reader.GetValue(3).ToString();
                        id_jednostka = reader.GetValue(4).ToString();
                        nazwa_jednostki = reader.GetValue(5).ToString() + ", " + reader.GetValue(6).ToString();
                    }
                    reader.Close();
                }
                Laczenie.Close();

                TextBoxImie.Text = imie;
                TextBoxNazwisko.Text = nazwisko;
                TextBoxTel.Text = telefon;
                TextBoxMail.Text = email;
                DropDownListJednostka.DataBind();
                DropDownListJednostka.Items.FindByValue(id_jednostka).Selected = true;
            }
        }

        protected void Zmien_Click(object sender, EventArgs e)
        {
            string id_uzytk = (string)Session["id_uzytk"];
            String imie;
            String nazwisko;
            String tel_kom;
            String e_mail;
            int id_jednostki;
            int wykonano = 0;

            id_jednostki = Convert.ToInt32(DropDownListJednostka.SelectedValue);
            imie = TextBoxImie.Text;
            nazwisko = TextBoxNazwisko.Text;
            tel_kom = TextBoxTel.Text;
            e_mail = TextBoxMail.Text;

            //inicjalizacja połączenia
            Laczenie.Initialize();
            Laczenie.Open();
            string query = "UPDATE [dbo].[UZYTK] SET [imie] = '" + imie + "', [nazwisko] = '" + nazwisko + "', [tel_kom] = '" + tel_kom + "', [e_mail] = '" + e_mail + "', [id_jednostka] = " + id_jednostki + " where id_uzytk = " + id_uzytk +"";

            Laczenie.Open();
            using (SqlCommand command2 = Laczenie.SqlCommand(query))
            {
                wykonano = command2.ExecuteNonQuery();
            }
            Laczenie.Close();

            if (wykonano > 0)
            {
                Session["blad_insert"] = "0";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " - SQL: " + query);
                Response.Redirect("Konto.aspx", true);
            }
            else
            {
                Session["blad_insert"] = "1";
                //zapisanie do logów
                Logi.LogFile(Session["login"] + " : błąd -> " + query);
                Response.Redirect("Konto.aspx", true);
            }
            Session["blad_insert"] = String.Empty;
        }
    }
}