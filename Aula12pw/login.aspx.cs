using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace pw12
{
    public partial class login : System.Web.UI.Page
    {
        String sc = "Server=localhost;Database=pweb;Uid=root;Pwd=;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void acessar(object sender, EventArgs e)
        {
            MySqlConnection conexao = new MySqlConnection(sc);
            conexao.Open();
            String sql = "select * from cliente where email='{0}' and senha='{1}'";
            sql = String.Format(sql, txtEmail.Text, txtSenha.Text);
            MySqlCommand comando = new MySqlCommand(sql, conexao);
            MySqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                Session["codigo"] = registro["codigo"].ToString();
                Session["nome"] = registro["nome"].ToString();
                Response.Redirect("lista.aspx");
            }
            else
            {
                Label1.Text = "Email ou senha invalidos !!!";
            }
            conexao.Close();
        }
    }
}