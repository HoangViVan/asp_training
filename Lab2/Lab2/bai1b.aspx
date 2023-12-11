<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai1b.aspx.cs" Inherits="Lab2.bai1b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <style>
            .container{
                border: 2px solid #00ff21;
                padding:20px;
            }
            .container .top{
                display:flex;
                justify-content:space-between;

            }
            .container .top .left{
                color:#00a60e;
                font-size:30px;
            }
            .container .top .left span{
                font-weight:bold;
            }
            .container .top .right #imganh{
                width: 350px;
            }
            .container .bottom div{
                background-color:#00a60e;
                padding:10px;
                width:100%;
            }
            .container .bottom div #hpltuoitre,
            .container .bottom div #hpltinnhanh,
            .container .bottom div #hplthanhnien,
            .container .bottom div #hplnlaodong{
                color:#fff;
                font-size:20px;
                width:100%;
                cursor:pointer;
                display:block;
                transition: all .3s ease;
            }
                .container .bottom div #hpltuoitre:hover,
                .container .bottom div #hpltinnhanh:hover,
                .container .bottom div #hplthanhnien:hover,
                .container .bottom div #hplnlaodong:hover {
                    color: #ffd800;
                  
                }
        </style>
        <div class="container">
            <div class="top">
                <div class ="left">
                    <span>Lợi ích của đọc báo:
                    </span>
                    <ul>
                        <li>Mở rộng kiến thức</li>
                        <li>Cập nhật thông tin</li>
                        <li>Rèn luyện trí nhớ</li>
                        <li>Giải trí ít tốn kiếm</li>
                        <li>...</li>
                    </ul>
                </div>
                 <div class="right">
                     <asp:Image ID="imganh" runat="server" ImageUrl ="~/image/anh.jpg"/>
                 </div>
            </div>
            <div class="bottom">
                <div><asp:HyperLink ID="hpltuoitre" runat="server" NavigateUrl="https://tuoitre.vn/">Tuổi trẻ</asp:HyperLink></div>
                <div><asp:HyperLink ID="hpltinnhanh" runat="server" NavigateUrl="https://vnexpress.net/">Tin nhanh</asp:HyperLink></div>
                <div><asp:HyperLink ID="hplthanhnien" runat="server" NavigateUrl="https://thanhnien.vn/">Thanh niên</asp:HyperLink></div>
                <div><asp:HyperLink ID="hplnlaodong" runat="server" NavigateUrl="https://nld.com.vn/">Người lao động</asp:HyperLink></div>
            </div>
        </div>
    </form>
</body>
</html>
