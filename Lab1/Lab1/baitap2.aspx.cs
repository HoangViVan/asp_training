using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1
{
    public partial class baitap2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        double a,b,tong,hieu,tich,thuong;

        protected void btnthuong_Click(object sender, EventArgs e)
        {
            a = double.Parse(txtso1.Text);
            b = double.Parse(txtso2.Text);
            thuong = a / b;
            lblketqua.Text = "Thương: "+thuong.ToString();
        }

        protected void btntich_Click(object sender, EventArgs e)
        {
            a = double.Parse(txtso1.Text);
            b = double.Parse(txtso2.Text);
            tich = a * b;
            lblketqua.Text = "Tích: "+tich.ToString();
        }

        protected void btnhieu_Click(object sender, EventArgs e)
        {
            a = double.Parse(txtso1.Text);
            b = double.Parse(txtso2.Text);
            hieu = a - b;
            lblketqua.Text = "Hiệu: "+hieu.ToString();
        }

        protected void btntong_Click(object sender, EventArgs e)
        {
            a = double.Parse(txtso1.Text);
            b = double.Parse(txtso2.Text);
            tong = a + b;
            lblketqua.Text = "Tổng: "+tong.ToString();
        }
    }
}