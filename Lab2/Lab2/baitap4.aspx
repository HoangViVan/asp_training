<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baitap4.aspx.cs" Inherits="Lab2.baitap4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <style>
            .container{
                border:2px solid #950000;
                font-size:20px;
            }
            .container .top{
                font-weight:bold;
                color: #950000;
                text-align:center;
                padding: 20px 0;
                border-top:2px solid #000000;
                border-left:2px solid #000000;
                background-color:#fffabe;
                border-right:2px solid #000000;
            }
            .bottom{
                display:flex;
            }
            .bottom .left{
                width:40%;
            }
            .bottom .right{
                width:60%;
            }
            .bottom .bottom-top{
                color:#fffabe;
                background-color:#950000;
                padding:10px;
                font-weight:bold;
            }
            .bottom .left .bottom-top{
                border-right:4px solid #fffabe;
            }
            .bottom .bottom-center{
                padding: 10px 10px 20px;
                display:block;
                height:166px;
            }
            .bottom-bt{
                border-top:2px solid #950000;
                padding:10px;
                color:#950000;
            }
            .bottom .left .bottom-bt{
                display:flex;
                justify-content:center;
                align-items:center;
            }
            .bottom .left .bottom-bt #btnhienthi{
                font-size: 20xp;
                padding:10px;
                cursor:pointer;
            }

        </style>
        <div class="container">
            <div class="top">PHIẾU LẤY Ý KIẾN NGƯỜI TIÊU DÙNG CỦA HÃNG ABX</div>
        
            <div class="bottom">
                <div class="left">
                    <div class="bottom-top"> 
                        Bạn hãy chọn sản phẩm sau:
                    </div>
                    <div class="bottom-center">
                        <asp:RadioButton ID="rblmaygiat" AutoPostBack="true" runat="server" GroupName="chonsanpham" Text="Máy giặt" OnCheckedChanged="rblmaygiat_CheckedChanged"/><br />
                        <asp:RadioButton ID="rbltivi" AutoPostBack="true" runat="server" GroupName="chonsanpham" Text="Tivi" Checked="true" OnCheckedChanged="rblmaygiat_CheckedChanged"/><br />
                        <asp:RadioButton ID="rbltulanh" AutoPostBack="true" runat="server" GroupName="chonsanpham" Text="Tủ lạnh" OnCheckedChanged="rblmaygiat_CheckedChanged"/><br />
                        <asp:RadioButton ID="rbldaudia" AutoPostBack="true" runat="server" GroupName="chonsanpham" Text="Đầu đĩa DVD" OnCheckedChanged="rblmaygiat_CheckedChanged"/><br />
                        <asp:RadioButton ID="rbllovisong" AutoPostBack="true" runat="server" GroupName="chonsanpham" Text="Lò vi ba" OnCheckedChanged="rblmaygiat_CheckedChanged"/><br />
                        <asp:RadioButton ID="rblnoicomdien" AutoPostBack="true" runat="server" GroupName="chonsanpham" Text="Nồi cơm điện" OnCheckedChanged="rblmaygiat_CheckedChanged"/>
                    </div>
                    <div class="bottom-bt">
                        <asp:Button ID="btnhienthi" runat="server" Text="Xem kết quả bình chọn" OnClick="btnhienthi_Click"/>
                    </div>
                </div>
                <div class="right">
                    <div class="bottom-top">
                        Các tiêu chuẩn bình chọn:
                    </div>
                    <div class="bottom-center">
                        <asp:CheckBox ID="chkmauma" runat="server" Text="Mẫu mã gọn và đẹp"/><br />
                        <asp:CheckBox ID="chkmanhinh" runat="server" Text="Màn hình sắc nét, có màu đẹp"/><br />
                        <asp:CheckBox ID="chkchucnang" runat="server" Text="Có nhiều chức năng tùy chọn"/><br />
                        <asp:CheckBox ID="chkia" runat="server" Text="Có nhiều giá, thích hợp với người mua"/>
                    </div>
                    <div class="bottom-bt">
                        <asp:Label ID="lblxuat" runat="server" Text="Bạn đang chọn sản phẩm: <b>Tivi</b>"></asp:Label>
                        <asp:BulletedList ID="bllketqua" runat="server"></asp:BulletedList>
                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
