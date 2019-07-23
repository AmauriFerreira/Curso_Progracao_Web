using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //adicionado
using MySql.Data.MySqlClient; //adicionado
public partial class login : System.Web.UI.Page
{
    private String sc = "Server=localhost;Database=pescola;Uid=root;Pwd=;";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void validarLogin(object sender, EventArgs e)
    {
        String email = txtEmail.Text;
        String senha = txtSenha.Text;

        MySqlConnection conexao = new MySqlConnection(sc);
        conexao.Open();
        String sql = "select * from login where email = @email and senha = @senha";

        MySqlParameter[] mySqlParameters = new MySqlParameter[]
        {
            new MySqlParameter() {ParameterName = "@email", Value = email},
            new MySqlParameter() {ParameterName = "@senha", Value = senha},
        };

        MySqlCommand comando = new MySqlCommand(sql, conexao);
        comando.Parameters.AddRange(mySqlParameters);

        MySqlDataReader registro = comando.ExecuteReader();
        if (registro.Read())
        {
            Session["email"] = email;
            Session["senha"] = senha;
            lblMensagem.Text = "";
            Response.Redirect("Lista")
        }
    }
}