using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab7
{
    public partial class TimKiemSP : System.Web.UI.Page
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
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query, conn);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            grvsp.DataSource = dataTable;
            grvsp.DataBind();
        }

        protected void btnmasp_Click(object sender, EventArgs e)
        {
            string query = "select * from tbl_SanPham where MaSP like '%"+txtmasp.Text+"%'";
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query, conn);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            grvsp.DataSource = dataTable;
            grvsp.DataBind();
        }

        protected void btntensp_Click(object sender, EventArgs e)
        {
            string query = "select * from tbl_SanPham where TenSP like N'%" + txttensp.Text + "%'";
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(query, conn);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            grvsp.DataSource = dataTable;
            grvsp.DataBind();
        }
    }
}