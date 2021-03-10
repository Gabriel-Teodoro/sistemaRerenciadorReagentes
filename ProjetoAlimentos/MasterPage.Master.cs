using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetoAlimentos
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["login"] != null)
            {
                btnSair.Visible = true;
                nomeUsuario.Visible = true;
                nomeUsuario.Text = Session["login"].ToString();

            }
        }

        protected void btnSair_Click(object sender, EventArgs e)
        {
            Session.Remove("login");
            Response.Redirect(Request.RawUrl);
        }
    }
}