using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class baitap3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsolonnhat_Click(object sender, EventArgs e)
        {
            double a = double.Parse(txtso1.Text);
            double b = double.Parse(txtso2.Text);
            double c = double.Parse(txtso3.Text);
            double max = a;
            if(max < b)
            {
                max = b;
            }
            if(max < c)
            {
                max = c;
            }
            lblketqua.Text = "Số lớn nhất trong 3 số là: "+max.ToString();
        }
    }
}