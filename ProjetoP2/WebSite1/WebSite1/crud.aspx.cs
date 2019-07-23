using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; //adicionado
using MySql.Data.MySqlClient; //adicionado
public partial class cadastro : System.Web.UI.Page
{

    private String sc = "Server=localhost;Database=pescola;Uid=root;Pwd=;";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cadastrar(object sender, EventArgs e)
    {
        try
        {
            MySqlConnection conexao = new MySqlConnection(sc);
            conexao.Open();
            String sql = "insert into professor(codigo, nome, telefone, escola, email, senha) "
                        + " values('{0}','{1}','{2}','{3}','{4}','{5}')";

            sql = String.Format(sql, txtCodigo.Text,
                                     txtNome.Text,
                                     txtTelefone.Text,
                                     txtEscola.Text,
                                     txtEmail.Text,
                                     txtSenha.Text);

            MySqlCommand comando = new MySqlCommand(sql, conexao);
            comando.ExecuteNonQuery(); //executar o comando no banco de dados nao vai ter retorno
            conexao.Close();
            lblMensagem.Text = "Registro inserido com sucesso";
            limpa();
        }
        catch (Exception err)
        {
            lblMensagem.Text = "Ocorreu um erro verifique !!! " + err.Message;
        }
    }



    private void limpa()
    {
        txtCodigo.Text = "";
        txtNome.Text = "";
        txtTelefone.Text = "";
        txtEscola.Text = "";
        txtEmail.Text = "";
        txtSenha.Text = "";
    }

    protected void carregar(object sender, EventArgs e)
    {
        try
        {
            MySqlConnection conexao = new MySqlConnection(sc);
            conexao.Open();
            String sql = "select * from professor where codigo=" + txtCodigo.Text;
            MySqlCommand comando = new MySqlCommand(sql, conexao);
            MySqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                txtCodigo.Text = registro["codigo"].ToString();
                txtNome.Text = registro["nome"].ToString();
                txtTelefone.Text = registro["telefone"].ToString();
                txtEscola.Text = registro["escola"].ToString();
                txtEmail.Text = registro["email"].ToString();
                txtSenha.Text = registro["senha"].ToString();
                
                lblMensagem.Text = "";
            }
            else
            {
                lblMensagem.Text = "registro não encontrado";
                limpa();
            }
            conexao.Close();
        }
        catch
        {
            lblMensagem.Text = "ocorreu um erro";
        }
    }

    protected void alterar(object sender, EventArgs e)
    {
        try
        {
            MySqlConnection conexao = new MySqlConnection(sc);
            conexao.Open();
            String sql = "update professor set codigo='{0}', nome='{1}', telefone='{2}', escola='{3}', email='{4}', senha='{5}' where codigo={0} ";
            
            sql = String.Format(sql, txtCodigo.Text, txtNome.Text, txtTelefone.Text, txtEscola.Text, txtEmail.Text, txtSenha.Text);

            MySqlCommand comando = new MySqlCommand(sql, conexao);
            comando.ExecuteNonQuery(); //executar o comando no banco de dados nao vai ter retorno
            conexao.Close();
            lblMensagem.Text = "Registro alterado com sucesso";
            limpa();
        }
        catch (Exception err)
        {
            lblMensagem.Text = "Ocorreu um erro verifique !!! " + err.Message;
        }
    }

    protected void deletar(object sender, EventArgs e)
    {
        try
        {
            MySqlConnection conexao = new MySqlConnection(sc);
            conexao.Open();
            String sql = "delete from professor  where codigo=" + txtCodigo.Text;

            MySqlCommand comando = new MySqlCommand(sql, conexao);
            comando.ExecuteNonQuery(); //executar o comando no banco de dados nao vai ter retorno
            conexao.Close();
            lblMensagem.Text = "Registro removido com sucesso";
            limpa();
        }
        catch (Exception err)
        {
            lblMensagem.Text = "Ocorreu um erro verifique !!! " + err.Message;
        }
    }
}