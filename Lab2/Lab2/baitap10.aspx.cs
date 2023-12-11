using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class baitap10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnchonlai_Click(object sender, EventArgs e)
        {
            lbketqua.Items.Clear();
            lblsoluong.Text = "<b>0</b> sản phẩm";
            cktraicay.Checked = false;
            cksocalatc.Checked = false;
            cksocalatao.Checked = false;
            ckkeotao.Checked = false;
            ckkeonho.Checked = false;
            cksocaladp.Checked = false;
            ckcoffeesua.Checked = false;
        }

        protected void cktraicay_CheckedChanged(object sender, EventArgs e)
        {
            if (cktraicay.Checked)
            {
                lbketqua.Items.Add("Kẹo trái cây thập cẩm");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
            else
            {
                lbketqua.Items.Remove("Kẹo trái cây thập cẩm");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
        }

        protected void ckkeonho_CheckedChanged(object sender, EventArgs e)
        {
            if (ckkeonho.Checked)
            {
                lbketqua.Items.Add("Kẹo nho");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
            else
            {
                lbketqua.Items.Remove("Kẹo nho");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
        }

        protected void ckkeotao_CheckedChanged(object sender, EventArgs e)
        {
            if (ckkeotao.Checked)
            {
                lbketqua.Items.Add("Kẹo táo");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
            else
            {
                lbketqua.Items.Remove("Kẹo táo");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
        }

        protected void cksocalatao_CheckedChanged(object sender, EventArgs e)
        {
            if (cksocalatao.Checked)
            {
                lbketqua.Items.Add("Sôcôla táo");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
            else
            {
                lbketqua.Items.Remove("Sôcôla táo");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
        }

        protected void cksocaladp_CheckedChanged(object sender, EventArgs e)
        {
            if (cksocaladp.Checked)
            {
                lbketqua.Items.Add("Kẹo sôcôla đậu phộng");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
            else
            {
                lbketqua.Items.Remove("Kẹo sôcôla đậu phộng");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
        }

        protected void ckcoffeesua_CheckedChanged(object sender, EventArgs e)
        {
            if (ckcoffeesua.Checked)
            {
                lbketqua.Items.Add("Kẹo coffee sữa");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
            else
            {
                lbketqua.Items.Remove("Kẹo coffee sữa");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
        }

        protected void cksocalatc_CheckedChanged(object sender, EventArgs e)
        {
            if (cksocalatc.Checked)
            {
                lbketqua.Items.Add("Sôcôla thập cẩm có nhân");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
            else
            {
                lbketqua.Items.Remove("Sôcôla thập cẩm có nhân");
                int sl = lbketqua.Items.Count;
                lblsoluong.Text = "<b>" + sl + "</b> số lượng";
            }
        }
    }
}