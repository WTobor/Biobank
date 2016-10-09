using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace magisterka.Classes
{
    static public class AkronimProgramu
    {
        static public string SprawdzAkronim(string id_programu)
        {
            String akronim = string.Empty;
            Laczenie.Initialize();
            Laczenie.Open();
            string query = "select akronim from [dbo].[projekt] where id_projektu =" + id_programu;
            List<int> nieakt_kod_userzy = new List<int>();

            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    akronim = reader.GetString(0);
                }
                reader.Close();
            }

            if (!String.IsNullOrEmpty(akronim))
            {
                return akronim.Replace(" ", "");
            }
            else
            {
                return "";
            }
        }
    }
}