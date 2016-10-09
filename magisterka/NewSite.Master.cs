using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewSiteMaster : MasterPage
{
    private const string AntiXsrfTokenKey = "__AntiXsrfToken";
    private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
    private string _antiXsrfTokenValue;


    protected void Page_Init(object sender, EventArgs e)
    {      

        // The code below helps to protect against XSRF attacks
        var requestCookie = Request.Cookies[AntiXsrfTokenKey];
        Guid requestCookieGuidValue;
        if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
        {
            // Use the Anti-XSRF token from the cookie
            _antiXsrfTokenValue = requestCookie.Value;
            Page.ViewStateUserKey = _antiXsrfTokenValue;
        }
        else
        {
            // Generate a new Anti-XSRF token and save to the cookie
            _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
            Page.ViewStateUserKey = _antiXsrfTokenValue;

            var responseCookie = new HttpCookie(AntiXsrfTokenKey)
            {
                HttpOnly = true,
                Value = _antiXsrfTokenValue
            };
            if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
            {
                responseCookie.Secure = true;
            }
            Response.Cookies.Set(responseCookie);
        }

        Page.PreLoad += master_Page_PreLoad;

        //nieaktywne kontrolki
        if (HttpContext.Current.Request.Url.AbsoluteUri == "http://localhost:49898/Logowanie.aspx")
        {
            ListaProgramow.BackColor = System.Drawing.ColorTranslator.FromHtml("#E6E6E6");
            ListaZmiennych.BackColor = System.Drawing.ColorTranslator.FromHtml("#E6E6E6");
            ListaMaterialow.BackColor = System.Drawing.ColorTranslator.FromHtml("#E6E6E6");
        }

    }

    void master_Page_PreLoad(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Set Anti-XSRF token
            ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
            ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
        }
        else
        {
            // Validate the Anti-XSRF token
            if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
            {
                throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
            }
        }
    }

    protected void ListaProgramow_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("ListaProgramow.aspx", true);
    }

    protected void ListaZmiennych_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("ListaZmiennych.aspx", true);
    }

    protected void ListaMaterialow_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("ListaMaterialow.aspx", true);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Button Konto = (Button)FindControl("btnKonto");
        Button Wyloguj = (Button)FindControl("btnWyloguj");
        if (!String.IsNullOrEmpty((string)Session["id_uzytk"]))
        {
            Konto.Text = Session["login"].ToString();
        }
        else
        {
            Konto.Visible = false;
            Wyloguj.Visible = false;
        }
    }
    protected void WylogujKlik(object sender, EventArgs e)
    {
        string id_uzytk = (string)Session["id_uzytk"];
        Response.Redirect("Logowanie.aspx", true);
    }
    protected void KontoKlik(object sender, EventArgs e)
    {
        Response.Redirect("Konto.aspx", true);
    }
}