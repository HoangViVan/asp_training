using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4
{
    public partial class baitap2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntinh_Click(object sender, EventArgs e)
        {
            int a = int.Parse(txtsoa.Text);
            int b = int.Parse(txtsob.Text);
            if(a == 0 || b == 0)
            {
                a = a + b;
            }
            else
            {
                while ( a != b)
                {
                    if(a >b)
                    {
                        a -= b;
                    }
                    else
                    {
                        b -= a;
                    }
                }
            }
            lblketqua.Text = "USCLN(" + txtsoa.Text + "," + txtsob.Text + ") = "+a;
        }
    }
}