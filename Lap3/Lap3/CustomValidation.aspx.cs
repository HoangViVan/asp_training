using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap3
{
    public partial class CustomValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Random random = new Random();
                lblmabaomat.Text=random.Next(10000,99999).ToString();
                Session["Captcha"]=lblmabaomat.Text;
            }
        }
        

        protected void btnkiemtra_Click(object sender, EventArgs e)
        {

        }

        protected void valmabaomat_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = (args.Value == Session["Captcha"].ToString());
        }
    }
}