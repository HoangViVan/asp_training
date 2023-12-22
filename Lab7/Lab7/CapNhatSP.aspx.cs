using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab7
{
    public partial class CapNhatSP : System.Web.UI.Page
    {
        public static string chuoiKN = "Data Source=.;Initial Catalog=QL_SANPHAM;Integrated Security=True;Encrypt=False";
        public static SqlConnection conn = new SqlConnection(chuoiKN);
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }
        void HienThi()
        {
            string query = "select * from tbl_SanPham";
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query,conn);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            grvsanpham.DataSource = dataTable;
            grvsanpham.DataBind();
        }
        void ThucThi(string caulenh)
        {
            SqlCommand sqlCommand = new SqlCommand(caulenh,conn);
            conn.Open();
            sqlCommand.ExecuteNonQuery();
            conn.Close();
        }
         
        Boolean KiemTra(string caulenh)
        {
            SqlDataAdapter sqlDataAdapter1 = new SqlDataAdapter(caulenh,conn);
            DataTable dataTable1 = new DataTable();
            sqlDataAdapter1.Fill(dataTable1);
            if(dataTable1.Rows.Count > 0)
            {
                return true;
            }else { return false; }
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            txtmasanpham.Text = "";
            txttensanpham.Text = "";
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            string kt = "select * from tbl_SanPham where MaSP='" + txtmasanpham.Text + "' or TenSP=N'" + txttensanpham.Text + "'";
            if (KiemTra(kt))
            {
                lblthongbao.Text = "Mã sản phẩm hoặc tên sản phẩm đã tồn tại";
            }
            else
            {
                string caulenh = "insert into tbl_SanPham values ('" + txtmasanpham.Text + "',N'" + txttensanpham.Text + "')";
                ThucThi(caulenh);
                HienThi();
            }
        }

        protected void grvsanpham_SelectedIndexChanged(object sender, EventArgs e)
        {
            string query = "select * from tbl_SanPham";
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query, conn);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            int dong = grvsanpham.SelectedIndex;
            int trang = grvsanpham.PageIndex;
            txtmasanpham.Text = dataTable.Rows[trang * 3 + dong][0].ToString();
            txttensanpham.Text = dataTable.Rows[trang * 3 + dong][1].ToString();
        }

        protected void grvsanpham_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvsanpham.PageIndex = e.NewPageIndex;
        }

        protected void btnsua_Click(object sender, EventArgs e)
        {
            string capnhat = "update tbl_SanPham set TenSP=N'"+txttensanpham.Text+"' where MaSP='"+txtmasanpham.Text+"'";
            ThucThi(capnhat);
            HienThi();
        }

        protected void btnxoa_Click(object sender, EventArgs e)
        {
            string xoa = "delete tbl_SanPham where MaSP='" + txtmasanpham.Text + "'";
            ThucThi(xoa); 
            HienThi();
            txtmasanpham.Text = "";
            txttensanpham.Text = "";
        }
    }
}