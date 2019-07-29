using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace pw09
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calcular(object sender, EventArgs e)
        {            
            try
            {
                double a, b, c;
                a = Convert.ToDouble(TextBox1.Text);

                b = Convert.ToDouble(TextBox2.Text);

                c = (a + b) / 2;
                Label1.Text = "Media = " + Convert.ToString(c);
            }
            catch (Exception err)
            {
                Label1.Text = "Digite somente numeros";
                String log = "Erro=>"+ DateTime.Now 
                        + err.Message + Environment.NewLine;
                File.AppendAllText("C:\\Users\\Public\\log.txt", log);                
            }
        }
    }
}