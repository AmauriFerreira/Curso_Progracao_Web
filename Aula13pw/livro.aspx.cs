using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace pw13_correcao
{
    public partial class livro : System.Web.UI.Page
    {
        String sc = "Server=localhost;Database=pweb;Uid=root;Pwd=;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void create(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexao = new MySqlConnection(sc);
                conexao.Open();
                String sql = String.Format("insert into livro(titulo, autor, qtd, valor, " +
                "paginas, resumo) values('{0}','{1}',{2},{3},{4},'{5}')"
                , txtTitulo.Text, txtAutor.Text,
                    txtQtd.Text, txtValor.Text, txtPaginas.Text, txtResumo.Text);
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();
                conexao.Close();
                lblMensagem.Text = "Registro Inserido com sucesso !";
                limpar();
            }
            catch (Exception err)
            {
                lblMensagem.Text = "Ocorreu um erro, tente mais tarde";
            }
        }

        protected void read(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexao = new MySqlConnection(sc);
                conexao.Open();
                String sql = String.Format("select * from livro where codigo={0}",
                    txtCodigo.Text);
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                MySqlDataReader registro = comando.ExecuteReader();
                if (registro.Read()) {
                    txtAutor.Text = registro["autor"].ToString();
                    txtPaginas.Text = registro["paginas"].ToString();
                    txtQtd.Text = registro["qtd"].ToString();
                    txtResumo.Text = registro["resumo"].ToString();
                    txtTitulo.Text = registro["titulo"].ToString();
                    txtValor.Text = registro["valor"].ToString();
                    lblMensagem.Text = "";
                } else {
                    lblMensagem.Text = "Registro não encontrado !";
                    limpar();
                }
                conexao.Close();
            }
            catch (Exception err)
            {
                lblMensagem.Text = "Ocorreu um erro tente mais tarde !";
            }
        }

        protected void update(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexao = new MySqlConnection(sc);
                conexao.Open();
                String sql = String.Format("update livro set titulo='{0}', autor='{1}', "+
                    "qtd={2}, valor={3},paginas={4}, resumo='{5}' where codigo={6}"
                , txtTitulo.Text, txtAutor.Text,
                    txtQtd.Text, txtValor.Text, txtPaginas.Text, 
                    txtResumo.Text, txtCodigo.Text);

                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();
                conexao.Close();
                lblMensagem.Text = "Registro Alterado com sucesso !";
                limpar();
            }
            catch (Exception err)
            {
                lblMensagem.Text = "Ocorreu um erro, tente mais tarde";
            }
        }

        protected void delete(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexao = new MySqlConnection(sc);
                conexao.Open();
                String sql = String.Format("delete from livro where codigo={0}"
                , txtCodigo.Text);

                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();
                conexao.Close();
                lblMensagem.Text = "Registro Removido com sucesso !";
                limpar();
            }
            catch (Exception err)
            {
                lblMensagem.Text = "Ocorreu um erro, tente mais tarde";
            }
        }

        private void limpar()
        {
            txtAutor.Text = "";
            txtPaginas.Text = "";
            txtQtd.Text = "";
            txtResumo.Text = "";
            txtTitulo.Text = "";
            txtValor.Text = "";
        }
    }
}