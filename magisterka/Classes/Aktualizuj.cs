using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Providers.Entities;
using System.Web.UI.WebControls;

namespace magisterka
{
    static public class Aktualizuj
    {
        static public Tuple<String, String>  Aktualizacja(int affectedRows)
        {
            String komunikat;
            String kolor;
            if (affectedRows > 0)
            {
                komunikat = "Zmiany zostały zapisane.";
                kolor = "Green";
            }
            else
            {
                komunikat = "Nie zaktualizowano danych.";
                kolor = "Red";
            }
            return Tuple.Create(komunikat, kolor);
        }
    }
}