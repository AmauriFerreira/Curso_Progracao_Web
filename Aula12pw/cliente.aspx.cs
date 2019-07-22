using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.IO;

namespace pw10
{
    public partial class cliente : System.Web.UI.Page
    {
        String sc = "Server=localhost;Database=pweb;Uid=root;Pwd=;";
        protected void Page_Load(object sender, EventArgs e)
        {
            //IsPostBack=>se a pagina 1 carga ou se é um RELOAD
            if (!IsPostBack) // so vai entrar neste if quando for 1 carga
            {
                //REQUEST => comando para recuperar um parametro
                txtCodigo.Text = Request["codigo"];
                pesquisar(null, null);
            }
        }

        protected void inserir(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexao = new MySqlConnection(sc);
                conexao.Open();
                String sql = "insert into cliente(nome,email,telefone,senha)" +
                    "values('{0}','{1}','{2}','{3}')";
                sql = String.Format(sql, txtNome.Text, txtEmail.Text,
                    txtTelefone.Text, txtSenha.Text);
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();
                conexao.Close();
                Label1.Text = "Registro inserido com sucesso!";
            }
            catch (Exception err)
            {
                Label1.Text = "Ocorreu um erro";
                String log = DateTime.Now + err.Message + Environment.NewLine;
                File.AppendAllText("C:\\Users\\Public\\pw10_log.txt", log);
            }
        }

        protected void pesquisar(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexao = new MySqlConnection(sc);
                conexao.Open();
                String sql = "select * from cliente where " +
                            " codigo=" + txtCodigo.Text;
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                MySqlDataReader registro = comando.ExecuteReader();
                if (registro.Read())
                {
                    txtNome.Text = registro["nome"].ToString();
                    txtEmail.Text = registro["email"].ToString();
                    txtSenha.Text = registro["senha"].ToString();
                    txtTelefone.Text = registro["telefone"].ToString();
                    Label1.Text = "";
                }
                else
                {
                    Label1.Text = "Registro não encontrado !";
                }
                conexao.Close();
            }
            catch (Exception err)
            {
                Label1.Text = "Ocorreu um erro";
                String log = DateTime.Now + err.Message + Environment.NewLine;
                File.AppendAllText("C:\\Users\\Public\\pw10_log.txt", log);
            }
        }

        protected void alterar(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexao = new MySqlConnection(sc);
                conexao.Open();
                String sql = "update cliente set nome='{0}',email='{1}'," +
                    "telefone='{2}',senha='{3}' where codigo={4}";                    

                sql = String.Format(sql, txtNome.Text, txtEmail.Text,
                    txtTelefone.Text, txtSenha.Text, txtCodigo.Text);
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();
                conexao.Close();
                Label1.Text = "Registro alterado com sucesso!";
            }
            catch (Exception err)
            {
                Label1.Text = "Ocorreu um erro";
                String log = DateTime.Now + err.Message + Environment.NewLine;
                File.AppendAllText("C:\\Users\\Public\\pw10_log.txt", log);
            }
        }

        protected void excluir(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexao = new MySqlConnection(sc);
                conexao.Open();
                String sql = "delete from cliente where codigo="+ txtCodigo.Text;

                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();
                conexao.Close();
                Label1.Text = "Registro removido com sucesso!";
            }
            catch (Exception err)
            {
                Label1.Text = "Ocorreu um erro";
                String log = DateTime.Now + err.Message + Environment.NewLine;
                File.AppendAllText("C:\\Users\\Public\\pw10_log.txt", log);
            }
        }
    }
}