using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace magisterka.Classes
{
    public class DanePacjenta
    {
        static public string SprawdzDane(string id_pacjent)
        {
            String dane = string.Empty;
            Laczenie.Initialize();
            Laczenie.Open();
            string query = "select imie, nazwisko from [dbo].[pacjent] where id_pacjent =" + id_pacjent;
            List<int> nieakt_kod_userzy = new List<int>();

            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    dane = reader.GetString(1) + " " + reader.GetString(0);
                }
                reader.Close();
            }

            if (!String.IsNullOrEmpty(dane))
            {
                return dane;
            }
            else
            {
                return "";
            }
        }
    }
}