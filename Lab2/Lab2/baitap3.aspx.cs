using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class baitap3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ltbhoa_SelectedIndexChanged(object sender, EventArgs e)
        {
            string hinh = ltbhoa.SelectedValue;
            string ten = ltbhoa.Text;
            imghoa.ImageUrl = "~/image/"+hinh+".jpg";
            
            if(ten == "hoabattu")
            {
                lbltenhoa.Text = "Hoa bất tử";
            }else if (ten == "hoacuc")
            {
                lbltenhoa.Text = "Hoa cúc";
            }
            else if (ten == "hoahong")
            {
                lbltenhoa.Text = "Hoa hồng";
            }
            else if (ten == "hoalan")
            {
                lbltenhoa.Text = "Hoa lan";
            }
            else if (ten == "hoaly")
            {
                lbltenhoa.Text = "Hoa lys";
            }
            else if (ten == "hoasung")
            {
                lbltenhoa.Text = "Hoa súng";
            }
            else if (ten == "hoadambut")
            {
                lbltenhoa.Text = "Hoa dâm bụt";
            }
            
        }
    }
}