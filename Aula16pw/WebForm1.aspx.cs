using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data;
using MySql.Data.MySqlClient;

namespace pw16_correcao
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                carregarCombo();
            }
        }
        private void carregarCombo()
        {
            String sc = "Server=localhost;Database=pweb;Uid=root;Pwd=;";
            DataSet ds = new DataSet();
            MySqlConnection con = new MySqlConnection(sc);
            con.Open();
            String sql = "select titulo from livro order by titulo";
            MySqlDataAdapter conversor = new MySqlDataAdapter(sql, con);
            conversor.Fill(ds);
            con.Close();
            cboProduto.DataSource = ds.Tables[0];
            cboProduto.DataTextField = "titulo";
            cboProduto.DataBind();
        }
        protected void enviar(object sender, EventArgs e)
        {
            MailAddress de = new MailAddress("fatecpwAds2016@outlook.com");
            MailAddress para = new MailAddress("norton.glaser@fatec.sp.gov.br");
            String mensagem = "<b>Nome:</b>" + txtNome.Text + "<br/>" +
                    "<b>Telefone:</b>" + txtTelefone.Text + "<br/>" +
                    "<b>Produto:</b>" + cboProduto.SelectedValue + "<br/>" +
                    "<b>Qtd:</b>" + txtQtd.Text + "<br/>" +
                    "<b>Mensagem:</b>" + txtMensagem.Text;
 
            MailMessage email = new MailMessage(de, para);
            email.Subject = "Orçamento";
            email.Body = mensagem;
            email.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient("smtp-mail.outlook.com");
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Credentials = new
            NetworkCredential("fatecpwAds2016@outlook.com", "FreiJoao59");
            try
            {
                smtp.Send(email);
                lblMensagem.Text = "Email enviado com sucesso !";
            }
            catch (Exception err)
            {
                lblMensagem.Text = "Ocorreu um erro ! " + err.Message;
            }

        }
    }
}