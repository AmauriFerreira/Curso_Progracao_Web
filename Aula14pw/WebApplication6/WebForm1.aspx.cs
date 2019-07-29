using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using WebApplication6.WS2;


namespace WebApplication6
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void testar(object sender, EventArgs e)
        {
            try
            {
                WS2.CurrencyConvertor obj = new WS2.CurrencyConvertor();
                double x = obj.ConversionRate(Currency.BRL, Currency.USD);
                Response.Write(x);
            }
            catch (Exception err)
            {
                Response.Write(err.Message);
            }
        }
    }
}