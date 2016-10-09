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
    public partial class Rejestracja : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //wykona się tylko za pierwszym razem
            if (!IsPostBack)
            {
                if (!String.IsNullOrEmpty((string)Session["dodaj_jednostke"]))
                {
                    string nazwa_jedn = (string)Session["dodaj_jednostke"];
                    DropDownListJednostka.DataTextFormatString = nazwa_jedn;
                    PoprDodanoJedn.Text = "Poprawnie dodano nową jednostkę";
                }

                if ((string)Session["istnieje_jednostka"] == "1")
                {
                    PoprDodanoJedn.ForeColor = System.Drawing.ColorTranslator.FromHtml("red");
                    PoprDodanoJedn.Text = "Istnieje taka jednostka";
                }
                Session["dodaj_jednostke"] = String.Empty;
                Session["istnieje_jednostka"] = String.Empty;
            }
        }

        private bool SprawdzCaptcha()
        {
            Captcha1.ValidateCaptcha(WpiszKod.Text.Trim());
            return Captcha1.UserValidated;
        }

        protected void DodajJednostke_Click(object sender, EventArgs e)
        {
            Response.Redirect("DodajJednostke.aspx", true);
        }

        protected void Rejestracja_Click(object sender, EventArgs e)
        {
            bool captcha_ok = false;
            bool valid_captcha = SprawdzCaptcha();
            if (valid_captcha == false)
            {
                validKod.IsValid = false;
                validKod.ErrorMessage = "Niepoprawny kod - spróbuj ponownie";
            }
            else
            {
                captcha_ok = true;
            }

            if (captcha_ok == true)
            {
                UsunNieaktUserow.SprawdzNieakt();         //klasa, która usuwa nieaktywnych userów

                String imie;
                String nazwisko;
                String login;
                String haslo;
                int id_uprawnienia;
                String tel_kom;
                String e_mail;
                int id_jednostki;

                id_jednostki = Convert.ToInt32(DropDownListJednostka.SelectedValue.ToString());
                imie = TextBoxImie.Text;
                nazwisko = TextBoxNazwisko.Text;
                login = TextBoxLogin.Text;
                haslo = TextBoxHaslo.Text;
                id_uprawnienia = Convert.ToInt32(DropDownListUprawnienia.SelectedValue.ToString());
                //.SelectedValue.ToString() to indeks z tabeli
                tel_kom = TextBoxTel.Text;
                e_mail = TextBoxMail.Text;

                //sprawdzenie, czy istnieje już taki login w bazie (ma być unique)
                Laczenie.Initialize();
                Laczenie.Open();

                if (DaneUzytk.ZwrocIdUser(login) > 0)
                {
                    validacjaLoginu.IsValid = false;    //wyświetlenie komunikatu o powtórzonym loginie
                    //zapisanie do logów
                    Logi.LogFile("Nie zarejestrowano: " + login + "- występuje taki login w bazie");
                    return;
                }

                validTmp.Text = "ok";
                string body = "";
                int wynikInsert = 0;
                //dodanie nieaktywnego użytkownika
                string query = "INSERT INTO [dbo].[UZYTK] ([imie],[nazwisko],[login],[haslo],[id_uprawnienia],[tel_kom],[e_mail],[id_jednostka], aktywny) VALUES ('" + imie + "', '" + nazwisko + "', '" + login + "', '" + haslo + "', " + id_uprawnienia + ", '" + tel_kom + "', '" + e_mail + "', " + id_jednostki + ", '" + "False" + "')";

                Laczenie.Open();
                using (SqlCommand command = Laczenie.SqlCommand(query))
                {
                    wynikInsert = command.ExecuteNonQuery();
                }
                Laczenie.Close();

                if (wynikInsert > 0)
                {
                    //zapisanie do logów
                    Logi.LogFile("Poprawnie zarejestrowano: " + login);
                }
                else
                {
                    Logi.LogFile("Nieudana rejestracja (brak insertu): " + login);
                    Response.Redirect("Logowanie.aspx", true);
                }

                //tworzenie kodu aktywacyjnego
                var wynik = WysylanieMaila.KodAktywacyjny(DaneUzytk.ZwrocIdUser(login));
                if (String.IsNullOrEmpty(wynik))
                {
                    //zapisanie do logów
                    Logi.LogFile("Nieudana rejestracja (brak kodu aktywacyjnego): " + login);
                    Response.Redirect("Logowanie.aspx", true);
                }
                else
                {
                    String link_akt = Request.Url.AbsoluteUri.Replace("Rejestracja.aspx", "Logowanie.aspx?KodAktyw=" + wynik);
                    body = "<br /><br /> Witaj " + login + ",";
                    body += "<br /><br />Kliknij w poniższy link w celu aktywacji";
                    body += "<br /><a href = '" + link_akt + "'>Kliknij, by aktywować konto.</a>";
                }

                //wysyłanie maila
                bool wyslane = WysylanieMaila.Mail("biobank@op.pl", e_mail, "Aktywacja konta", body);
                if (wyslane == true)
                {
                    //zapisanie do logów
                    Logi.LogFile("Rejestracja: " + login + " - wysłano maila z linkiem aktywacyjnym");
                    Session["rejestracja"] = "true";
                    Response.Redirect("Logowanie.aspx", true);
                }
                else
                {
                    //zapisanie do logów
                    Logi.LogFile("Nieudana rejestracja (mail nie został wysłany): " + login);
                    Session["rejestracja"] = "false";
                    Response.Redirect("Logowanie.aspx", true);
                }
            }
        }

        protected void WpiszKodVal(object source, ServerValidateEventArgs args)
        {
            String Captcha = WpiszKod.Text;
        }
    }
}