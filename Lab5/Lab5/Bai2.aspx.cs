using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Lab5
{
    public partial class Bai2 : System.Web.UI.Page
    {
        public static string chuoiKN = "Data Source=.;Initial Catalog=QL_SINHVIEN;Integrated Security=True;Encrypt=False;TrustServerCertificate=False;";
        public static SqlConnection cn = new SqlConnection(chuoiKN);
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }

        void HienThi()
        {
            try
            {
                string chuoiSQL = "select * from tbl_Monhoc";
                SqlDataAdapter adapter = new SqlDataAdapter(chuoiSQL, cn);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                grvbangmonhoc.DataSource = dt;
                grvbangmonhoc.DataBind();
            }catch (Exception)
            {
                lblthongbao.Text = "Lỗi kết nối";
            }
        }
        void ThucThi(string caulenh)
        {
            SqlCommand cmd = new SqlCommand(caulenh,cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        
        public Boolean KiemTra(string caulenh)
        {
            SqlDataAdapter adapter = new SqlDataAdapter(caulenh,cn);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            if(dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
            
        }
        
        protected void grvbangmonhoc_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string chuoiSQl = "select * from tbl_Monhoc";
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(chuoiSQl, cn);
            DataTable dt = new DataTable();
            sqlDataAdapter.Fill(dt);
            int dong = grvbangmonhoc.SelectedIndex;
            int trang = grvbangmonhoc.PageIndex;
            txtmamonhoc.Text = dt.Rows[trang * 3 + dong][0].ToString();
            txttenmonhoc.Text = dt.Rows[trang * 3 + dong][1].ToString();
        }

        

        protected void grvbangmonhoc_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvbangmonhoc.PageIndex = e.NewPageIndex;
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            txtmamonhoc.Text = "";
            txttenmonhoc.Text = "";
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            string kiemtra = "select * from tbl_Monhoc where MaMH='"+txtmamonhoc.Text+"' or TenMH =N'"+txttenmonhoc.Text+"'";
            if (KiemTra(kiemtra))
            {
                lblthongbao.Text = "Tên môn học đã tồn tại";
            }
            else
            {
                string query = "insert into tbl_Monhoc values ('" + txtmamonhoc.Text + "',N'" + txttenmonhoc.Text + "')";
                ThucThi(query);
                HienThi();
            }
            
        }

        protected void btnxoa_Click(object sender, EventArgs e)
        {
            string query = "delete from tbl_Monhoc where MaMH='" + txtmamonhoc.Text + "'";
            ThucThi(query);
            HienThi();
            txtmamonhoc.Text = "";
            txttenmonhoc.Text = "";
        }

        protected void btnsua_Click(object sender, EventArgs e)
        {
            string query = "update tbl_Monhoc set TenMH = N'"+txttenmonhoc.Text + "' where MaMH = '"+txtmamonhoc.Text+"'";
            ThucThi(query);
            HienThi();
        }
    }
}