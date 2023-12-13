<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai1a.aspx.cs" Inherits="Lab2.bai1a" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        .hsdk{
            display:flex;
            justify-content: center;
            align-items:center;
            margin-top:20px;
        }
        .hsdk div{
            font-size:20px;
            color:#b100ff;
            font-weight:bold;
        }
        .container{
            margin: 20px;
            border: 2px solid #b100ff;
            display:flex;
        }
        .container .container-left{
            width:50%;
            border-right:2px solid #b100ff;
        }
        .container .container-right{
            width:50%;
        }
        .container .top{
            display:flex;
            justify-content:center;
            align-items:center;
            padding: 10px 0;
            font-weight:bold;
            color:#ff0000;
            background-color:#ddc2fa;
            border-bottom: 2px solid #b100ff;
        }
        .container .bottom{
            padding:20px;
        }
        .thong-tin{
            margin-bottom:10px;
            display:flex;
        }
        .thong-tin .thong-tin-left{
            width: 35%;
        }
        .thong-tin .thong-tin-right{
            width:75%;
        }
        .button{
            display:flex;
            justify-content:center;
            align-items:center;
        }
        .bottom ul li{
            display:flex;
            margin-bottom:10px;
            color:#b100ff;
        }
        .bottom ul li span{
            margin-right:5px;
        }
    </style>
    <form id="form1" runat="server">
        <div class="hsdk">
            <div>Hồ sơ đăng kí</div>
        </div>
        <div class="container">
            <div class="container-left">
                <div class="top">
                    <div>Thông tin cá nhân</div>
                </div>
                <div class ="bottom">
                    <div class="thong-tin">
                        <div class="thong-tin-left">Họ tên khách hàng</div>
                        <asp:TextBox ID="txthoten" CssClass="thong-tin-right" runat="server"></asp:TextBox>
                    </div>
                    <div class="thong-tin">
                         <div class="thong-tin-left">Email</div>
                        <asp:TextBox ID="txtemail" CssClass="thong-tin-right" runat="server"></asp:TextBox>
                    </div>
                    <div class="thong-tin">
                         <div class="thong-tin-left">Giới tính</div>
                        <div class="thong-tin-right">
                            <asp:RadioButton ID="rdbnam" runat="server" GroupName="gioitinh"/>
                            <asp:Label ID="Label5" runat="server" Text="Nam"></asp:Label>
                            <asp:RadioButton ID="rdbnu" runat="server" GroupName="gioitinh"/>
                            <asp:Label ID="Label6" runat="server" Text="Nữ"></asp:Label>

                        </div>
                    </div>
                    <div class="thong-tin">
                         <div class="thong-tin-left">Địa chỉ</div>
                        <textarea id="txtdiachi" runat="server" class="thong-tin-right" cols="30" rows="2"></textarea>
                    </div>
                    <div class="thong-tin">
                         <div class="thong-tin-left">Điện thoại</div>
                        <asp:TextBox ID="txtsodt" CssClass="thong-tin-right" runat="server"></asp:TextBox>
                    </div>
                    <div class="button">
                    <asp:Button ID="btndangki" runat="server" Text="Đăng ký" OnClick="btndangki_Click" />
                    <asp:Label ID="lblthongbao" runat="server" Text="" ForeColor="Red"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="container-right">
                <div class="top">
                    <div>Hồ sơ khách hàng</div>
                </div>
                <div class="bottom">
                    <ul>
                        <li>
                            <span id="lihoten" runat="server"></span>
                            <i id="ihoten" runat="server"></i>
                        </li>
                        <li>
                            <span id="liemail" runat="server"></span>
                            <i id="iemail" runat="server"></i>
                        </li>
                        <li>
                            <span id="ligioitinh" runat="server"></span>
                            <i id="igoitinh" runat="server"></i>
                        </li>
                        <li>
                            <span id="lidiachi" runat="server"></span>
                            <i id="idiachi" runat="server"></i>
                        </li>
                        <li>
                            <span id="lisdt" runat="server"></span>
                            <i id="isdt" runat="server"></i>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
