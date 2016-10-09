using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class DodajJednostke : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //bez ograniczeń ze względu na rolę użytkownika, bo przy rejestracji jest dodawana nowa jednostka
        }

        protected void DodajKlik(object sender, EventArgs e)
        {
            String nazwa_nadrz;
            String nazwa_podrz;
            String ulica;
            String kod_poczt;
            String miasto;
            String mail;
            String www;
            String tel;
            String fax;
            String nip;
            String id_jednostki;

            nazwa_nadrz = TextBoxNazwaJednNadrz.Text;
            nazwa_podrz = TextBoxNazwaJednPodrz.Text;
            ulica = TextBoxUlica.Text;
            kod_poczt = TextBoxKodPocztowy.Text;
            miasto = TextBoxMiasto.Text;
            mail = TextBoxMail.Text;
            www = TextBoxWww.Text;
            tel = TextBoxTel.Text;
            fax = TextBoxFax.Text;
            nip = TextBoxNip.Text;

            //sprawdzenie, czy istnieje taka jednostka
            string query = "select id_jednostki from [dbo].[JEDNOSTKA] where nazwa_nadrz='" + nazwa_nadrz + "' and nazwa_podrz='" + nazwa_podrz + "'";

            Laczenie.Initialize();
            Laczenie.Open();
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    id_jednostki = reader.GetInt32(0).ToString();
                    Session["istnieje_jednostka"] = "1";
                    Response.Redirect("Rejestracja.aspx", true);
                }
                else
                {
                    Session["istnieje_jednostka"] = "0";
                }
                reader.Close();
                Session["blad_insert"] = String.Empty;
            }
            Laczenie.Close();

            string query1 = "insert into JEDNOSTKA (nazwa_nadrz, nazwa_podrz, ulica, kod_pocztowy, miasto, e_mail, www, tel, fax, nip) values ('" + nazwa_nadrz + "', '" + nazwa_podrz + "', '" + ulica + "', '" + kod_poczt + "', '" + miasto + "', '" + mail + "', '" + www + "', '" + tel + "', '" + fax + "', '" + nip + "')";
            //zapisanie do logów
            Logi.LogFile(Session["login"] + " - SQL: " + query1);
            //inicjalizacja połączenia
            Laczenie.Initialize();
            Laczenie.Open();
            SqlCommand command1 = Laczenie.SqlCommand(query1);
            command1.ExecuteNonQuery();
            Laczenie.Close();
            Session["dodaj_jednostke"] = nazwa_nadrz + ", " + nazwa_podrz;
            Response.Redirect("Rejestracja.aspx", true);     
        }
    }
}