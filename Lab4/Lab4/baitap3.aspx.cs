﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4
{
    public partial class baitap3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                lblthongbao.Text="Chúc mừng "+txthoten.Text+" đã đăng ký thành công";
            }
        }
    }
}