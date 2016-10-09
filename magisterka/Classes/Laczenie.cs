using System;
using System.Configuration;
using System.Data.SqlClient;

namespace magisterka
{
    public static class Laczenie
    {
        private static SqlConnection connection;

        public static void Initialize()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["baza_pacjentow_v2ConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
        }

        public static SqlCommand SqlCommand(String select)
        {
            return new SqlCommand(select, connection);
        }

        public static bool Open()
        {
            try
            {
                connection.Open();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static bool Close()
        {
            try
            {
                connection.Close();
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}