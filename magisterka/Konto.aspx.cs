using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class Konto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool kontynuuj = false;
            //brak dostępu niezalogowanemu użytkownikowi
            if (!String.IsNullOrEmpty((string)Session["id_uzytk"]))
            {
                string id_uzytk = (string)Session["id_uzytk"];
                kontynuuj = true;
            }
            else
            {
                Session["brak_dostepu"] = "true";
                Response.Redirect("Logowanie.aspx", true);
            }

            //wykona się tylko za pierwszym razem
            if (!IsPostBack)
            {
                if (kontynuuj == true)
                {
                    if (!String.IsNullOrEmpty((string)Session["blad_insert"]))
                    {
                        if ((string)Session["blad_insert"] == "0")      //nie wystąpił błąd
                        {
                            PoprAktual.Text = "Poprawnie zmieniono dane użytkownika";
                        }
                        else if ((string)Session["blad_insert"] == "1")     //wystąpił błąd
                        {
                            PoprAktual.Text = "Nie udało się zmienić danych użytkownika - spróbuj ponownie";
                        }
                        Session["blad_insert"] = String.Empty;      //usuwanie sesji (komunikat już się wyświetlił)
                    }

                    string id_uzytk = (string)Session["id_uzytk"];
                    String imie = String.Empty;
                    String nazwisko = String.Empty;
                    String telefon = String.Empty;
                    String email = String.Empty;
                    String nazwa_jednostki = String.Empty;

                    string query = "select distinct [UZYTK].imie, [UZYTK].nazwisko, [UZYTK].tel_kom, [UZYTK].e_mail, JEDNOSTKA.nazwa_nadrz, JEDNOSTKA.nazwa_podrz  from [dbo].[UZYTK] JOIN [dbo].JEDNOSTKA ON JEDNOSTKA.id_jednostki = [UZYTK].id_jednostka where id_uzytk=" + id_uzytk;

                    Laczenie.Open();
                    using (SqlCommand command = Laczenie.SqlCommand(query))
                    {
                        SqlDataReader reader = command.ExecuteReader();
                        while (reader.Read())
                        {
                            imie = reader.GetValue(0).ToString();
                            nazwisko = reader.GetValue(1).ToString();
                            telefon = reader.GetValue(2).ToString();
                            email = reader.GetValue(3).ToString();
                            nazwa_jednostki = reader.GetValue(4).ToString() + ", " + reader.GetValue(5).ToString();
                        }
                        reader.Close();
                    }
                    Laczenie.Close();

                    if (telefon == String.Empty)
                    {
                        telefon = "--";
                    }

                    LabelImie.Text = imie;
                    LabelNazwisko.Text = nazwisko;
                    LabelTelefon.Text = telefon;
                    LabelMail.Text = email;
                    LabelJedn.Text = nazwa_jednostki;
                }
            }
        }

        protected void ZmienDane_Click(object sender, EventArgs e)
        {
            Response.Redirect("EdycjaDanych.aspx", true);
        }

        protected void ZmienHaslo_Click(object sender, EventArgs e)
        {
            Response.Redirect("ZmianaHasla.aspx", true);
        }
    }
}