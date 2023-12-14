using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lap3
{
    public partial class ValidationControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangki_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                int sophong = cbxloaiphong.SelectedIndex;
                string loaiphong;
                if (sophong == 0)
                {
                    loaiphong = "Phòng đơn";
                }else if (sophong == 1)
                {
                    loaiphong = "Phòng đôi";
                }else if(sophong == 2)
                {
                    loaiphong = "Phòng VIP đơn";
                }else { loaiphong = "Phòng VIP đôi"; }
                lblthongbao.Text = "Chào mừng "+txthoten.Text+" đã đăng ký thành công. <br/>Cơ quan: "+txtcoquan.Text+"<br/>Email: "+txtemail.Text+"<br/>Ngày checkin: "+txtcheckin.Text+"<br/>Số ngày ở: "+txtsongay.Text+"<br/>Loại phòng: "+loaiphong;
            }
        }
    }
}