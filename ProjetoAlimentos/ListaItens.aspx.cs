using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoAlimentos
{
    public partial class ListaItens : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("default.aspx");
                ViewState["PageAnterior"] = Request.UrlReferrer.ToString();
            }
            if (Session["id_prod"] == null)
                Response.Redirect("listaProdutos.aspx");
            if (!Page.IsPostBack)
            {
                //lblProd.Text = Session["desc_prod"].ToString();
                int idprod = Convert.ToInt32(Session["id_prod"]);
                ConectaBanco con = new ConectaBanco();
                gvItens.DataSource = con.listaItensIdProd(idprod);
                gvItens.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnVoltar_Click(object sender, ImageClickEventArgs e)
        {
            if (ViewState["PageAnterior"] != null)
                Response.Redirect(ViewState["PageAnterior"].ToString());
            else
                Response.Redirect("listaprod.aspx");
        }
    }
}