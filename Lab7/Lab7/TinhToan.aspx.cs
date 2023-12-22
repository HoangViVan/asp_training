using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab7
{
    public partial class TinhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntinh_Click(object sender, EventArgs e)
        {
            int n = int.Parse(txtson.Text);
            int tong=0;
            for (int i = 1; i<= n; i++){
                tong = tong + i;
            }
            txtthongbao.Text = tong.ToString();
        }
    }
}