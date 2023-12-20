<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bai2.aspx.cs" Inherits="Lab5.Bai2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <style>
            .container{
                width:100vw;
                height:100vh;
                background-color:#808080;
                font-size:17px;
            }
            .container .top{
                text-align:center;
                margin-top:20px;
            }
            .container .center{
                padding-top:20px;
                display:flex;
                justify-content:center;
                align-items:center;
            }
            .container .center .left{
                display:flex;
                flex-direction:column;
            }
            .container .center .right{
                margin-left:20px;
                border:1px solid #d600e4;
                background-color:#fff;
                padding: 0 300px;
                width:300px;
                height:400px;
            }
            .container .center .right .right-top{
                text-align:center;
                padding-top:10px;
            }
            .container .center .right .button{
                display:flex;
                justify-content:space-between;
            }
        </style>
        <div class="container">
            <div class="top">BÀI KIỂM TRA - HỌ TÊN SINH VIÊN - LỚP</div>
            <div class="center">
                <div class="left">
                    <asp:HyperLink ID="hplbai1" runat="server">Câu 1</asp:HyperLink>
                    <asp:HyperLink ID="hplbai2" runat="server">Câu 2</asp:HyperLink>
                </div>
                <div class="right">
                    <div class="right-top">
                        DANH SÁCH MÔN HỌC
                    </div>
                    <div class="nhap">
                        <asp:Label ID="Label1" runat="server" Text="Mã môn học: "></asp:Label>
                        <asp:TextBox ID="txtmamonhoc" runat="server"></asp:TextBox>
                    </div>
                    <div class="nhap">
                        <asp:Label ID="Label2" runat="server" Text="Tên môn học: "></asp:Label>
                        <asp:TextBox ID="txttenmonhoc" runat="server"></asp:TextBox>
                    </div>
                    <div class="bang">
                        <asp:GridView ID="grvbangmonhoc" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True"  HorizontalAlign="Center" OnSelectedIndexChanged="grvbangmonhoc_SelectedIndexChanged1" PageIndex="3" OnPageIndexChanging="grvbangmonhoc_PageIndexChanging" Height="123px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField HeaderText="Mã môn học" DataField="MaMH" />
                                <asp:BoundField HeaderText="Tên môn học" DataField="TenMH" />
                                <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF"/>
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </div>
                    <div class="thongbao">
                        <asp:Label ID="lblthongbao" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="button">
                        <asp:Button ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click" />
                        <asp:Button ID="btnluu" runat="server" Text="Lưu" OnClick="btnluu_Click" />
                        <asp:Button ID="btnxoa" runat="server" Text="Xóa" OnClick="btnxoa_Click" />
                        <asp:Button ID="btnsua" runat="server" Text="Sửa" OnClick="btnsua_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
