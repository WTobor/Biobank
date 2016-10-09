using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace magisterka
{
    static public class UsunNieaktUserow
    {
        static public void SprawdzNieakt()
        {
            Laczenie.Initialize();
            Laczenie.Open();
            DateTime data_przet = DateTime.Today.AddDays(-3.00).Date;
            string query = "select id_uzytk from [dbo].[UZYTK_AKTYW] where data_kodu<='" + data_przet + "'";
            List<int> nieakt_kod_userzy = new List<int>();

            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    int id_uzytk = reader.GetInt32(0);
                    nieakt_kod_userzy.Add(id_uzytk);
                    //zapisanie do logów
                    Logi.LogFile("Nieaktywne konto: " + id_uzytk);
                }
                reader.Close();
            }

            if (nieakt_kod_userzy.Count > 0)
            {
                foreach (int id_uzytk in nieakt_kod_userzy)
                {
                    int wynik_del0 = 0;
                    Laczenie.Open();
                    string query0 = "delete from [dbo].[UZYTK_AKTYW] where id_uzytk=" + id_uzytk;
                    //sprawdzanie, czy wykonał się delete
                    using (SqlCommand command0 = Laczenie.SqlCommand(query0))
                    {
                        wynik_del0 = command0.ExecuteNonQuery();  //ExecuteNonQuery zwraca liczbę zmodyfikowanych wierszy 
                    }
                    Laczenie.Close();

                    if (wynik_del0 < 0)
                    {
                        return;
                    }

                    int wynik_del1 = 0;
                    Laczenie.Open();
                    string query1 = "delete from [dbo].[UZYTK] where id_uzytk=" + id_uzytk + "";
                    //sprawdzanie, czy wykonał się delete
                    using (SqlCommand command1 = Laczenie.SqlCommand(query1))
                    {
                        wynik_del1 = command1.ExecuteNonQuery();  //ExecuteNonQuery zwraca liczbę zmodyfikowanych wierszy 
                    }
                    Laczenie.Close();

                    if (wynik_del1 > 0)
                    {
                        //zapisanie do logów
                        Logi.LogFile("Poprawnie usunięto nieaktywnego użytkownika: " + id_uzytk);
                    }
                    else
                    {
                        //zapisanie do logów
                        Logi.LogFile("Nie udało się usunąć nieaktywnego użytkownika: " + id_uzytk);
                    }
                }
            }
        }
    }
}