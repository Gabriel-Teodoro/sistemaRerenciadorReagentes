using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoAlimentos
{
    public partial class adm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("default.aspx");
                ViewState["PageAnterior"] = Request.UrlReferrer.ToString();
            }
        }

        protected void ButtonCadatroUsuario_Click(object sender, EventArgs e)
        {
            ConectaBanco con = new ConectaBanco();

            string senha = TextSenha.Text;
            string confirmaSenha = TextConfSenha.Text;
            if (String.Equals(senha, confirmaSenha)) {
                bool flag = con.insereAdm(TextNomeUsuario.Text,
                            TextSenha.Text,
                            1
                            );
                if (flag == true)
                {
                    string title = "Cadastro";
                    string body = "Produto cadastrado com sucesso :)";
                    ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('" + title + "', '" + body + "');", true);
                }
                else
                {
                    lblmsg.Text = con.mensagem;
                }
            }
            else
            {
                string title = "Cadastro";
                string body = "Produto cadastrado com sucesso :)";
                ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowPopup('Não sei');", true);
            }
            
        }

        protected void btnVoltar_Click(object sender, ImageClickEventArgs e)
        {
            if (ViewState["PageAnterior"] != null)
                Response.Redirect(ViewState["PageAnterior"].ToString());
            else
                Response.Redirect("dashboard.aspx");
        }
    }
}