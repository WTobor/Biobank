using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace magisterka
{
    public class Logi
    {
        static public void LogFile(string zdarzenie)
        {
             String sciezka;
             sciezka = Path.GetFullPath(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "..\\")) + "logi\\";

             if (!Directory.Exists(sciezka))
             {
                 Directory.CreateDirectory(sciezka);
             }
             String nazwa_pliku;
             nazwa_pliku = DateTime.Now.ToShortDateString() + "_log.txt";

             StreamWriter log;

             if (!File.Exists(sciezka + nazwa_pliku))
             {
                 log = new StreamWriter(sciezka + nazwa_pliku);
             }
             else
             {
                 log = File.AppendText(sciezka + nazwa_pliku);
             }

            //zapisywanie do pliku
             log.WriteLine(DateTime.Now + " " + zdarzenie);

            //zamknięcie strumienia
             log.Close();
        }
    }
}