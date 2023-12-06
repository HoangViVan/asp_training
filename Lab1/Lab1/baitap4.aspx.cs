using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class baitap4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntinh_Click(object sender, EventArgs e)
        {
            double a = double.Parse(txtso1.Text);
            double b = double.Parse(txtso2.Text);
            double c = -b / a;
            lblpt.Text = "Phương trình bậc 1: " + a.ToString() + "x + " + b.ToString() + " = 0";
            lblketqua.Text = "Phương trình có nghiệm x = "+c.ToString();
        }
    }
}