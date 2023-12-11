using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class baitap6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string kieubulle = DropDownList1.SelectedValue;
            if(kieubulle == "ktthuong")
            {
                BulletedList1.BulletStyle = BulletStyle.LowerAlpha;
            }else if(kieubulle == "so")
            {
                BulletedList1.BulletStyle = BulletStyle.Numbered;
            }
            else if (kieubulle == "ktin")
            {
                BulletedList1.BulletStyle = BulletStyle.UpperAlpha;
            }
            else if (kieubulle == "hinhtron")
            {
                BulletedList1.BulletStyle = BulletStyle.Circle;
            }
            else if (kieubulle == "hinhvuong")
            {
                BulletedList1.BulletStyle = BulletStyle.Square;
            }

        }

        protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
        {
            string chontrang = BulletedList1.Items[e.Index].Value;
            Response.Redirect(chontrang);
        }
    }
}