using magisterka.Classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace magisterka
{
    public partial class RaportProgramu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //brak dostępu niezalogowanemu użytkownikowi
            if (!String.IsNullOrEmpty((string)Session["id_uzytk"]))
            {
                string id_uzytk = (string)Session["id_uzytk"];
            }
            else
            {
                Session["brak_dostepu"] = "true";
                Response.Redirect("Logowanie.aspx", true);
            }

            //wykona się tylko za pierwszym razem
            if (!IsPostBack)
            {
                string id_programu = (string)Session["id_programu"];
                string akronim = AkronimProgramu.SprawdzAkronim(id_programu);

                PoprAktual.Text = String.Empty;

                //gdy archiwalny program
                if (!String.IsNullOrEmpty((string)Session["archiwum"]))
                {
                    WybranyProgramLabel.Text = "Wybrany program archiwalny: " + akronim;
                }
                else
                {
                    WybranyProgramLabel.Text = "Wybrany program: " + akronim;
                }

                if (!String.IsNullOrEmpty((string)Session["blad_raport"]))
                {
                    if ((string)Session["blad_raport"] == "0")
                    {
                        string dirPliku = (string)Session["dirPliku"];
                        PoprAktual.Text = "Poprawnie zapisano do pliku " + dirPliku;
                    }
                    else if ((string)Session["blad_raport"] == "1")
                    {
                        PoprAktual.Text = "Brak danych do raportu";
                    }
                    Session["blad_raport"] = String.Empty;      //usuwanie sesji (komunikat już się wyświetlił)
                }
            }
        }
        
        protected void RaportTxt_Click(object sender, EventArgs e)
        {
            if (TworzenieRaportu("\t", ".txt") == true)
            {
                Session["blad_raport"] = "0";
            }
            else
            {
                Session["blad_raport"] = "1";
            }
            Response.Redirect("RaportProgramu.aspx", true);
        }

        protected void RaportCsv_Click(object sender, EventArgs e)
        {
            if (TworzenieRaportu(",", ".csv") == true)
            {
                Session["blad_raport"] = "0";
            }
            else
            {
                Session["blad_raport"] = "1";
            }
            Response.Redirect("RaportProgramu.aspx", true);
        }

        protected bool TworzenieRaportu(string sep, string rozsz)
        {
            string id_programu = (string)Session["id_programu"];
            string akronim = AkronimProgramu.SprawdzAkronim(id_programu);
            String sciezka;
            string pathUser = Environment.GetFolderPath(Environment.SpecialFolder.UserProfile);
            sciezka = Path.Combine(pathUser, "Downloads");

            String nazwa_pliku;
            nazwa_pliku = akronim + "_" + DateTime.Now.ToShortDateString() + "_" + DateTime.Now.Hour + "-" + DateTime.Now.Minute + rozsz;

            StreamWriter raport;
            string dir = Path.Combine(sciezka, nazwa_pliku);
            Session["dirPliku"] = dir;
            if (!File.Exists(dir))
            {
                raport = new StreamWriter(dir);
            }
            else
            {
                raport = File.AppendText(dir);
            }

            List<Tuple<String, String, String, String, String>> dane = new List<Tuple<String, String, String, String, String>>();

            string query = "SELECT DISTINCT PACJENT.imie + ' ' + PACJENT.nazwisko AS pacjent, PACJENT.pesel, SLOWNIK_ZMIENNA.nazwa_zmiennej as zmienna, w1.wartosc FROM PACJENT CROSS JOIN SLOWNIK_ZMIENNA JOIN PACJ_PROB p1 ON p1.id_pacjent = PACJENT.id_pacjent LEFT JOIN WYNIK w1 ON p1.id_probki = w1.id_probki AND SLOWNIK_ZMIENNA.id_slownika_zmiennych = w1.id_slownik_zmiennej WHERE p1.id_pacjent IN (SELECT id_pacjent from PACJ_PROJ WHERE id_projektu=" + id_programu + ") AND SLOWNIK_ZMIENNA.id_projektu=" + id_programu + " AND (w1.wartosc IS NOT NULL OR EXISTS(SELECT w2.id_wyniku from WYNIK w2 LEFT JOIN PACJ_PROB p2 ON w2.id_probki=p2.id_probki WHERE p2.id_pacjent=PACJENT.id_pacjent AND w2.wartosc IS NULL)) ORDER BY pacjent";

            Laczenie.Open();
            using (SqlCommand command = Laczenie.SqlCommand(query))
            {
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    String pacjent = String.Empty;
                    String pesel = String.Empty;
                    String zmienna = String.Empty;
                    String wartosc = String.Empty;
                    String imie = String.Empty;
                    String nazwisko = String.Empty;
                    if (!reader.IsDBNull(0))    //sprawdzenie, czy jest nullem
                    {
                        pacjent = reader.GetString(0);
                        imie = pacjent.Split(' ')[0];
                        nazwisko = pacjent.Split(' ')[1];
                    }
                    if (!reader.IsDBNull(1))    //sprawdzenie, czy jest nullem
                    {
                        pesel = reader.GetString(1);
                    }
                    if (!reader.IsDBNull(2))    //sprawdzenie, czy jest nullem
                    {
                        zmienna = reader.GetString(2);
                    }
                    if (!reader.IsDBNull(3))    //sprawdzenie, czy jest nullem
                    {
                        wartosc = reader.GetString(3);
                    }
                    dane.Add(Tuple.Create(imie, nazwisko, pesel, zmienna, wartosc));
                }
                reader.Close();
            }
            Laczenie.Close();

            if (dane.Count == 0)
            {
                return false;
            }
            else
            {
                //edycja danych LINQ
                var nowe_dane = dane.GroupBy(w => new { w.Item1, w.Item2 }).ToList();
                string naglowek = "imie" + sep + "nazwisko" + sep + "pesel" + sep;
                var nazwy_zmiennych = dane.Select(nzw => nzw.Item4).Distinct().OrderBy(nzw => nzw);     // distinct wybiera bez powtórzeń
                foreach (var nazwa in nazwy_zmiennych)
                {
                    naglowek += nazwa + sep;
                }
                if (naglowek.EndsWith(sep))
                {
                    naglowek = naglowek.Remove(naglowek.Length - 1);
                }
                //zapisywanie do stream
                raport.WriteLine(naglowek);

                foreach (var wiersz in nowe_dane)
                {
                    string pesel = wiersz.Select(x => x.Item3).FirstOrDefault().ToString();
                    string napis = wiersz.Key.Item1 + sep + wiersz.Key.Item2 + sep + pesel + sep;       //nazwa wiersza i pesel
                    foreach (var w in wiersz.OrderBy(w => w.Item4))     //posortowane wg zmiennych
                    {
                        napis += w.Item5 + sep;
                    }
                    if (napis.EndsWith(sep))
                    {
                        napis = napis.Remove(napis.Length - 1);
                    }
                    //zapisywanie do streama
                    raport.WriteLine(napis);
                }

                //zamknięcie strumienia
                raport.Close();

                return true;
            }
        }
        
     }
}