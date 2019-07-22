using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace pw12
{
    public partial class lista : System.Web.UI.Page
    {
        String sc = "Server=localhost;Database=pweb;Uid=root;Pwd=;";   
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["codigo"] == null)
            {
                Response.Redirect("login.aspx");
            }
            Label1.Text = "Ola " + (String)Session["nome"];

            MySqlConnection conexao = new MySqlConnection(sc);
            conexao.Open();
            String sql = "select * from cliente";
            MySqlCommand comando = new MySqlCommand(sql, conexao);
            GridView1.DataSource = comando.ExecuteReader();
            GridView1.DataBind();
            conexao.Close();            
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void logout(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }
    }
}