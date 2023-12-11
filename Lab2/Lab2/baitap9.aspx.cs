using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class baitap9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            try
            {
                HttpPostedFile upfile = FileUpload1.PostedFile;
                if (upfile != null)
                {
                    string namefolder = Server.MapPath(@"update");
                    string namefile = upfile.FileName;
                    upfile.SaveAs(string.Format(@"{0}\{1}",namefolder,namefile));
                    lbxketqua.Items.Add(namefile);
                }
            }catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
        protected void Onclickviewxemtin(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
        protected void Onclickviewupdate(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
}