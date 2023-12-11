using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class bai1a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangki_Click(object sender, EventArgs e)
        {
            string hoten = txthoten.Text;
            string email = txtemail.Text;
            string gioitinh;
            if (rdbnam.Checked)
            {
                gioitinh = "Nam";
            }
            else if (rdbnu.Checked)
            {
                gioitinh = "Nữ";
            }
            else gioitinh = "Chưa chọn giới tính";
            string diachi = txtdiachi.Value;
            string sodt = txtsodt.Text;
            lihoten.InnerText = "Họ và tên khách hàng:";
            ihoten.InnerText = hoten;
            liemail.InnerText = "Email:";
            iemail.InnerText = email;
            ligioitinh.InnerText = "Giới tính:";
            igoitinh.InnerText = gioitinh;
            lidiachi.InnerText = "Địa chỉ:";
            idiachi.InnerText = diachi;
            lisdt.InnerText = "Số điện thoại:";
            isdt.InnerText = sodt;
        }
    }
}