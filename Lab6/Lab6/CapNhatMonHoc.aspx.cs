using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab6
{
    public partial class CapNhatMonHoc : System.Web.UI.Page
    {
        public static string chuoiKn = "Data Source=.;Initial Catalog=QL_SINHVIEN;Integrated Security=True;Encrypt=False";
        public static SqlConnection cn = new SqlConnection(chuoiKn);
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }
        void HienThi()
        {
            try
            {
                string queryselect = "select * from tbl_Monhoc";
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(queryselect,cn);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);
                grvcnmh.DataSource = dataTable;
                grvcnmh.DataBind();
            }catch (Exception)
            {
                lblthongbao.Text = "Lỗi kết nối";
            }
        }
        public Boolean Kiemtra(string KT)
        {
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(KT,cn);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            if (dataTable.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
            
        }
        protected void grvcnmh_SelectedIndexChanged(object sender, EventArgs e)
        {
            string querykn = "select * from tbl_Monhoc";
            SqlDataAdapter adapter = new SqlDataAdapter(querykn,cn);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            int dong = grvcnmh.SelectedIndex;
            int trang = grvcnmh.PageIndex;
            txtmamonhoc.Text = dataTable.Rows[trang*3+dong][0].ToString();
            txttenmonhoc.Text = dataTable.Rows[trang * 3 + dong][1].ToString();
        }
        void ThucThi(string query)
        {
            SqlCommand sqlCommand = new SqlCommand(query, cn);
            cn.Open();
            sqlCommand.ExecuteNonQuery();
            cn.Close();
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            txtmamonhoc.Text = "";
            txttenmonhoc.Text = "";
        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            string kt = "select * from tbl_Monhoc where MaMH='"+txtmamonhoc.Text+"' or TenMH=N'"+txttenmonhoc.Text+"'";
            if (Kiemtra(kt))
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
            string query = "delete tbl_Monhoc where MaMH='"+txtmamonhoc.Text+"'";
            ThucThi(query) ;
            HienThi();
            txtmamonhoc.Text = "";
            txttenmonhoc.Text = "";
        }

        protected void btnsua_Click(object sender, EventArgs e)
        {
            string query = "update tbl_Monhoc set TenMH = N'"+txttenmonhoc.Text+"' where MaMH = '"+txtmamonhoc.Text+"'";
            ThucThi(query) ;
            HienThi();
        }

        protected void grvcnmh_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvcnmh.PageIndex = e.NewPageIndex;
        }
    }
}