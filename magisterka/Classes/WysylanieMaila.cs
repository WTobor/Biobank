using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.Providers.Entities;

namespace magisterka
{
    static public class WysylanieMaila
    {
        static public bool Mail(String nadawca, String odbiorca, String temat, String tresc)
        {
            //Tworzenie wiadomości email
            MailMessage wiadomosc = new MailMessage(nadawca, odbiorca, temat, tresc);
            //Ustawienie formatu wiadomości jako HTML
            wiadomosc.IsBodyHtml = true;
            try
            {
                //Tworzenie klienta SMTP
                SmtpClient klientSMTP = new SmtpClient("xxx.pl", 587);
                klientSMTP.UseDefaultCredentials = false;
                klientSMTP.Credentials = new NetworkCredential("xxx@xxx.pl", "xxx");
                //Ustawienie sposobu dostarczania wiadomości
                klientSMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
                //Wysyłanie wiadomości przechwytując wyjątek
                klientSMTP.Send(wiadomosc);
                return true;
            }
            catch
            {
                return false;
            }
        }

        static public Tuple<bool, String, String> Wysylanie(String login)
        {
            String adres_mail = String.Empty;
            String id_uzytk = String.Empty;

            String komunikat = String.Empty;

            Laczenie.Initialize();
            Laczenie.Open();
            string query0 = "select id_uzytk from [dbo].[UZYTK] where login='" + login + "'";
            using (SqlCommand command0 = Laczenie.SqlCommand(query0))
            {
                SqlDataReader reader0 = command0.ExecuteReader();
                if (reader0.Read())
                {
                    id_uzytk = reader0.GetInt32(0).ToString();
                }
                else
                {
                    komunikat = "Wpisz poprawny login";
                    return Tuple.Create(false, komunikat, "");
                }
                reader0.Close();
            }
            Laczenie.Close();

            if (String.IsNullOrEmpty(id_uzytk))
            {
                //zapisanie do logów
                Logi.LogFile("Problem z loginem przy odzyskiwaniu hasła: " + login);
                return Tuple.Create(false, komunikat, "");
            }

            Laczenie.Open();
            string query1 = "select e_mail from [dbo].[UZYTK] where id_uzytk=" + id_uzytk + "";

            using (SqlCommand command1 = Laczenie.SqlCommand(query1))
            {
                SqlDataReader reader1 = command1.ExecuteReader();
                if (reader1.Read())
                {
                    adres_mail = reader1.GetString(0).ToString();
                }
                reader1.Close();
            }
            Laczenie.Close();

            if (String.IsNullOrEmpty(adres_mail))
            {
                komunikat = "Wystąpił problem z e-mailem - skontaktuj się z Administratorem";
                //zapisanie do logów
                Logi.LogFile("Problem z e-mailem przy odzyskiwaniu hasła: " + login);
                return Tuple.Create(false, komunikat, "");
            }
            return Tuple.Create(true, "", adres_mail);
        }

        static public String KodAktywacyjny(int id_uzytk)
        {
            int wynik_insert = 0;
            string kod_aktywacyjny = Guid.NewGuid().ToString();     //unikatowy ciąg znaków

            Laczenie.Open();
            string query = "INSERT INTO [UZYTK_AKTYW] (id_uzytk, kod_aktyw, data_kodu) VALUES (" + id_uzytk + ", '" + kod_aktywacyjny + "', '" + DateTime.Today.ToString() +"')";

            //sprawdzanie, czy wykonał się insert
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                wynik_insert = command.ExecuteNonQuery();  //ExecuteNonQuery zwraca liczbę zmodyfikowanych wierszy 
            }
            Laczenie.Close();

            if (wynik_insert > 0)
            {
                return kod_aktywacyjny;
            }
            else
            {
                return "";
            }
        }
    }
}