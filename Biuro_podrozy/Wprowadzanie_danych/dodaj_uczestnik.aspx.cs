using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Biuro_podrozy.Wprowadzanie_danych
{
    public partial class dodaj_uczestnik : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            Response.Redirect("~/Wprowadzanie_danych/dodaj_uczestnik.aspx");
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }
    }
}