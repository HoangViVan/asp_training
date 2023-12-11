using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class baitap4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnhienthi_Click(object sender, EventArgs e)
        {
            bllketqua.Items.Clear();
            int dem = 1;
            if(chkmauma.Checked)
            {
                bllketqua.Items.Add(dem + ". " + chkmauma.Text);
                dem++;
            }
            if (chkmanhinh.Checked)
            {
                bllketqua.Items.Add(dem + ". " + chkmanhinh.Text);
                dem++;
            }
            if (chkchucnang.Checked)
            {
                bllketqua.Items.Add(dem + ". " + chkchucnang.Text);
                dem++;
            }
            if (chkia.Checked)
            {
                bllketqua.Items.Add(dem + ". " + chkia.Text);
                dem++;
            }
        }

        protected void rblmaygiat_CheckedChanged(object sender, EventArgs e)
        {
            string sanpham = "";
            if (rbldaudia.Checked)
            {
                sanpham = rbldaudia.Text;
                chkmauma.Text = "Mẫu mã đa dạng";
                chkmanhinh.Text = "Chạy mượt mà, ít tiếng ồn";
                chkia.Text = "Sử dụng được với đa dạng đĩa";
                chkchucnang.Text = "Kết nối với loa dễ dàng";
            }
            else if (rbllovisong.Checked)
            {
                sanpham = rbllovisong.Text;
                chkmauma.Text = "Màu sắc đẹp đẽ";
                chkmanhinh.Text = "Không gian lớn, đặt được nhiều món";
                chkia.Text = "Dễ sử dụng";
                chkchucnang.Text = "Ít tốn điện";
            }
            else if (rblmaygiat.Checked)
            {
                sanpham = rblmaygiat.Text;
                chkmauma.Text = "Có nhiều chức năng giặt";
                chkmanhinh.Text = "Có thể ngưng giữa chừng";
                chkia.Text = "Sấy khô đồ sau khi giặt xong";
                chkchucnang.Text = "Mẫu mã gọn đẹp";
            }
            else if (rblnoicomdien.Checked)
            {
                sanpham = rblnoicomdien.Text;
                chkmauma.Text = "Tiết kiệm điện";
                chkmanhinh.Text = "Có nhiều chức năng nấu, hâm, nướng, hấp";
                chkia.Text = "Nấu nướng tự động";
                chkchucnang.Text = "Diện tích nồi lớn";
            }
            else if (rbltivi.Checked)
            {
                sanpham = rbltivi.Text;
                chkmauma.Text = "Mẫu mã gọn đẹp";
                chkmanhinh.Text = "Màn hình sắc nét, có màu đẹp";
                chkia.Text = "Có nhiều chức năng tùy chọn";
                chkchucnang.Text = "Có nhiều giá, thích hợp với người mua";
            }
            else if (rbltulanh.Checked)
            {
                sanpham = rbltulanh.Text;
                chkmauma.Text = "Làm lạnh tốt";
                chkmanhinh.Text = "Tiết kiệm điện";
                chkia.Text = "Thể tích tủ lớn";
                chkchucnang.Text = "Có nhiều chức năng tùy chọn";
            }
            lblxuat.Text = "Bạn đang chọn sản phẩm: <b>" + sanpham + "</b>";
        }
    }
}