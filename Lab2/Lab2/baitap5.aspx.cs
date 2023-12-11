using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class baitap5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndatbanh_Click(object sender, EventArgs e)
        {
            string chonmon = drdloaibanh.SelectedValue;
            string mon="";
            if (chonmon == "croissant")
            {
                mon = "Bánh Croissant bơ";
            }else if(chonmon == "banhbo")
            {
                mon = "Bánh bò nướng";
            }else if(chonmon == "pate")
            {
                mon = "Patés chauds";
            }else if(chonmon == "hamburger")
            {
                mon = "Hamburger";
            }
            string sluong = txtsoluong.Text;
            if (string.IsNullOrEmpty(sluong))
            {
                lblthongbao.Text = "Chưa có số lượng";
            }
            else
            {
                lbxbanhdat.Items.Add(mon + " ("+sluong+")");
                lblthongbao.Text = "";
                txtsoluong.Text = "";
            }
            
        }

        protected void btnxoa_Click(object sender, ImageClickEventArgs e)
        {
            int chonbanh = lbxbanhdat.SelectedIndex;
            lbxbanhdat.Items.RemoveAt(chonbanh);
        }

        protected void btninhoadon_Click(object sender, EventArgs e)
        {
            itenkhachhang.InnerText = txttenkhachhang.Text;
            idiachi.InnerText = txtdiachi.Text;
            imasothue.InnerText = txtmasothue.Text;
            
            string ketqua="<table border='2'>";
            
            for (int i = 0; i < lbxbanhdat.Items.Count; i++)
            {
                string laybanh=lbxbanhdat.Items[i].Text;
                int vitri = laybanh.IndexOf("(");
                int vtcuoi = laybanh.LastIndexOf(")");
                string tenbanhdat = laybanh.Substring(0, vitri);
                string sl = laybanh.Substring(vitri+1, vtcuoi-vitri-1);
                ketqua = ketqua + "<tr><td>" + tenbanhdat + "</td><td>" + sl + "</td> </tr>";
            }
            ketqua = ketqua + "</table>";
            lblketqua.Text=ketqua;
        }
    }
}