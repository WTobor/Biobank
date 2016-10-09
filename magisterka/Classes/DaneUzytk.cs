using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace magisterka.Classes
{
    static public class DaneUzytk
    {
        static public int ZwrocIdUser(string login)
        {
            Laczenie.Open();
            string query = "select id_uzytk from [dbo].[UZYTK] where login='" + login + "'";
            int id_uzytk = -1;

            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    id_uzytk = reader.GetInt32(0);
                }
                reader.Close();
            }

            return id_uzytk;
        }

        static public int ZwrocRoleUser(string id_uzytk)
        {
            Laczenie.Open();
            string query = "select id_uprawnienia from [dbo].[UZYTK] where id_uzytk=" + id_uzytk;
            int id_uprawnienia = -1;

            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    id_uprawnienia = reader.GetInt32(0);
                }
                reader.Close();
            }

            return id_uprawnienia;
        }

        public enum Role
        {
            Admin = 1,
            Lekarz = 2,
            Diagnosta = 3
        }
    }
}