<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baitap5.aspx.cs" Inherits="Lab2.baitap5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <style>
            table{
                border:1px solid #008303;
            }
            .tablet tr:nth-child(1) td{
                border-bottom:1px solid #008303;
                text-align:center;
                font-weight:bold;
                color:#008303;
                background-color:#dcffc1;
            }
            .tablet tr:nth-child(5) td{
                border-top:1px solid #008303;
                
                color:#008303;
                text-align:center;
            }
            .tablet tr:nth-child(5) td:nth-child(1),
            .tablet tr:nth-child(6) td:nth-child(1),
            .tablet tr:nth-child(7) td:nth-child(1),
            .tablet tr:nth-child(8) td:nth-child(1),
            .tablet tr:nth-child(9) td:nth-child(1){
                border-right:1px solid #008303;
                display:flex;
                justify-content:center;
                align-items:center;
            }
            .tablet tr:nth-child(8) td:nth-child(1){
                color:#ff0000;
            }
            .tablet tr:nth-child(6) td:nth-child(1) #drdloaibanh{
                width:90%;height:21px;
            }
            .tablet tr:nth-child(7) td:nth-child(1) #txtsoluong{
                width:40px;
            }
            .tablet tr:nth-child(9) td:nth-child(1) #btndatbanh{
                width:50px;
                font-size:16px;
                text-align:center;
            }
            
            .tablet tr:nth-child(9) td:nth-child(2) #btnxoa{
                width:20px;

            }
            .tablet tr:nth-child(10) td{
                display:flex;
                justify-content:center;
                align-items:center;
            }
        </style>
        <div>
            <table class="tablet">
                <tr>
                    <td colspan="2">ĐƠN ĐẶT HÀNG</td>
                </tr>
                <tr>
                    <td>Khách hàng:</td>
                    <td>
                        <asp:TextBox ID="txttenkhachhang" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Địa chỉ:</td>
                    <td>
                        <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Mã số thuế:</td>
                    <td>
                        <asp:TextBox ID="txtmasothue" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Chọn các loại bánh sau:</td>
                    <td>Danh sách bánh được đặt</td>
                </tr>
                <tr>
                    <td>
                        <asp:DropDownList ID="drdloaibanh" AutoPostBack="true" runat="server">
                            <asp:ListItem Text="Bánh Croissant bơ" Value="croissant"/>
                            <asp:ListItem Text="Bánh bò nướng" Value="banhbo"/>
                            <asp:ListItem Text="Patés chauds" Value="pate"/>
                            <asp:ListItem Text="Hamburger" Value="hamburger"/>
                        </asp:DropDownList>
                    </td>
                    <td rowspan="3">
                        <asp:ListBox ID="lbxbanhdat" style="width:100%" AutoPostBack="true" runat="server">
                            
                        </asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td>Số lượng: <asp:TextBox ID="txtsoluong" runat="server"></asp:TextBox> cái</td>
                </tr>
                <tr>
                    <td>
                <asp:Label ID="lblthongbao" runat="server" ForeColor="Red" Text="" ></asp:Label></td></tr>
                <tr>
                    <td>
                        <asp:Button ID="btndatbanh" runat="server" Text=">" OnClick="btndatbanh_Click" /></td>
                    <td>
                        <asp:ImageButton ID="btnxoa" runat="server" ImageUrl="~/image/xoa.png" OnClick="btnxoa_Click"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btninhoadon" runat="server" Text="In hóa đơn đặt hàng" OnClick="btninhoadon_Click" />
                    </td>
                </tr>
            </table>
            <div class="hoadon" style="color:#ff0000; margin-top:30px">HÓA ĐƠN ĐẶT HÀNG</div>
            <table style="border:1px solid #ff0000; color:#ff0000;">
                
                <tr><td><b>Khách hàng: </b><i id="itenkhachhang" runat="server"></i></td></tr>
                <tr><td><b>Địa chỉ: </b><i id="idiachi" runat="server"></i></td></tr>
                <tr><td><b>Mã số thuế: </b><i id="imasothue" runat="server"></i></td></tr>

                <tr></tr>
                <tr><td><b>Đặt các loại bánh sau:</b></td></tr>
                <tr>
                    <td id="tdketqua" runat="server">
                        <asp:Label ID="lblketqua" runat="server" Text=""></asp:Label>                
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
