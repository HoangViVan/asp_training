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
    public partial class TimKiemMonHoc : System.Web.UI.Page
    {
        public static string ckn = "Data Source=.;Initial Catalog=QL_SINHVIEN;Integrated Security=True;Encrypt=False";
        public static SqlConnection conn = new SqlConnection(ckn);
        protected void Page_Load(object sender, EventArgs e)
        {
            HienThi();
        }
        void HienThi()
        {
            string sqlquery = "select * from tbl_Monhoc";
            SqlDataAdapter adapter = new SqlDataAdapter(sqlquery,conn);
            DataTable dataTable = new DataTable();
            adapter.Fill(dataTable);
            grvtimkiem.DataSource = dataTable;
            grvtimkiem.DataBind();
        }
        void ThucThi(string query)
        {
            SqlDataAdapter sqlData = new SqlDataAdapter(query,conn);
            DataTable dataTable = new DataTable();
            sqlData.Fill(dataTable);
            grvtimkiem.DataSource=dataTable;
            grvtimkiem.DataBind();
        }

        protected void btntimma_Click(object sender, EventArgs e)
        {
            try
            {
                if(txtmamh.Text == "")
                {
                    HienThi();
                }
                else
                {
                    string query = "select * from tbl_Monhoc where MaMH like '%"+txtmamh.Text+"%'";
                    ThucThi(query);
                    txtmamh.Text = "";
                }
            }catch (Exception){
                
            }
        }

        protected void btntimten_Click(object sender, EventArgs e)
        {
            try
            {
                if(txttenmh.Text == "")
                {
                    HienThi();
                }
                else
                {
                    string query = "select * from tbl_Monhoc where TenMH like N'%" + txttenmh.Text + "%'";
                    ThucThi(query);
                    txttenmh.Text = "";
                }
            }catch (Exception)
            {

            }
        }
    }
}