using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

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
            string diachi = txtdiachi.Value;
            string sodt = txtsodt.Text;
            if (string.IsNullOrEmpty(hoten))
            {
                lblthongbao.Text = "Bạn cần nhập họ tên";
            }
            else if (string.IsNullOrEmpty(email))
            {
                lblthongbao.Text = "Bạn cần nhập email";
            }
            else if (!email.EndsWith("@gmail.com"))
            {
                lblthongbao.Text = "Email không đúng định dạng";
            }
            else if (string.IsNullOrEmpty(diachi))
            {
                lblthongbao.Text = "Bạn cần nhập địa chỉ";
            }
            else if (string.IsNullOrEmpty(sodt))
            {
                lblthongbao.Text = "Bạn cần nhập số điện thoại";
            }
            else if (Regex.IsMatch(sodt, @"^0[0-9]{9}$"))
            {
                if (rdbnam.Checked)
                {
                    gioitinh = "Nam";
                }
                else if (rdbnu.Checked)
                {
                    gioitinh = "Nữ";
                }
                else gioitinh = "Chưa chọn giới tính";

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
            else lblthongbao.Text = "Số điện thoại không đúng định dạng";
            
        }
    }
}