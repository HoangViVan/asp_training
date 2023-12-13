using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class baitap2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbndoiten_Click(object sender, EventArgs e)
        {
            string ten = txthotenb2.Text;
            if (string.IsNullOrEmpty(ten))
            {
                lblthongbao.Text = "Chưa nhập họ tên";
            }else
            lblcauchao.Text = "Chào bạn <b><i>" + ten + "</i></b> <br/> Chúc mừng bạn đã đến với môn học <b><i>Lập trình Web2 </i></b>";
        }
    }
}