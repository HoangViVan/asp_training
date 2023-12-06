using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class baitap5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntinh_Click(object sender, EventArgs e)
        {
            double a = double.Parse(txtso1.Text);
            double b = double.Parse(txtso2.Text);
            double c = double.Parse(txtso3.Text);
            double delta = b * b - 4 * a * c;
            double x1, x2;
            lblpt.Text = "Phương trình bậc 2 có dạng: " + a.ToString() + "x^2 + " + b.ToString() + "x + "+c.ToString()+" = 0";
            if(delta > 0)
            {
                x1 = (-b - delta) / (2 * a);
                x2 = (-b +delta)/(2 * a);
                lblketqua.Text = "Phương trình có 2 nghiệm phân biệt <br /> x1 = " + x1.ToString() + "<br /> x2 = " + x2.ToString();
            }else if(delta == 0)
            {
                x1 = x2 = -b / (2 * a);
                lblketqua.Text = "Phương trình có nghiệm kép \n x1 = x2 = " + x2.ToString();
            }
            else {
                lblketqua.Text = "Phương trình vô nghiệm";
            }
            
        }
    }
}