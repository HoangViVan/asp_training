<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baitap6.aspx.cs" Inherits="Lab2.baitap6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="border:2px solid #000aef;">
                <tr style="text-align:center;color:#000000;background-color:#75f9ff; padding:20px; font-weight:bold;">
                    <td>Hệ thống bài tập các điều khiển cơ bản</td>
                </tr>
                <tr>
                    <td>
                    <asp:BulletedList ID="BulletedList1" DisplayMode="LinkButton" runat="server" style="text-decoration:underline; color:#000aef; cursor:pointer;" OnClick="BulletedList1_Click">
                        <asp:ListItem Text="Bài 3.1: Trang đọc báo" Value="~/bai1b.aspx" />
                        <asp:ListItem Text="Bài 3.2: Trang câu chào" Value="~/baitap2.aspx" />
                        <asp:ListItem Text="Bài 3.3: Album các loài hoa" Value="~/baitap3.aspx" />
                        <asp:ListItem Text="Bài 3.4: Trang đơn đặt hàng" Value="~/baitap4.aspx" />
                        <asp:ListItem Text="Bài 3.5: Trang phiếu ý kiến người tiêu dùng" Value="~/baitap5.aspx" />
                                                
                    </asp:BulletedList> 
                     </td>
                </tr>
                <tr >
                    <td style="display:flex;justify-content:center;align-items:center;padding:20px;border-top:1px solid #000aef;">
                    <asp:Label ID="Label1" runat="server" Text="Đổi Bullet  "></asp:Label> 
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem Text="Kí tự thường" Value="ktthuong" />
                        <asp:ListItem Text="Số" Value="so" />
                        <asp:ListItem Text="Kí tự in" Value="ktin" />
                        <asp:ListItem Text="Hình tròn" Value="hinhtron" />
                        <asp:ListItem Text="Hình vuông" Value="hinhvuong" />
                    </asp:DropDownList> 
                     </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
