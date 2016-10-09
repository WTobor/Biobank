using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace magisterka  
{
    static public class GenerujHaslo  
    {
        static public String Generuj()
        {
            Random r = new Random(DateTime.Now.Millisecond);
            String haslo = String.Empty;
            string zbior_znakow = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvXxYyZz0123456789";
            int dl = zbior_znakow.Length;

            //hasło może mieć max 8 znaków
            for (int i = 0; i<8; i++)  
            {
                int j = 0;
                j = r.Next(0, dl);
                haslo += zbior_znakow[j];
            }
            return haslo;
        }
    }
}