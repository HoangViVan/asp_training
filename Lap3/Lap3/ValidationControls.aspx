<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationControls.aspx.cs" Inherits="Lap3.ValidationControls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="background-color:#008e8e;color:#fff;width:700px;border:1px solid #fff">
                <tr><td colspan="3" style="text-align:center;color:#fff;background-color:#0098cf">ĐĂNG KÝ PHÒNG</td></tr>
                <tr>
                    <td style="width:30%">Họ tên</td>
                    <td style="width:40%">
                        <asp:TextBox ID="txthoten" runat="server" Width="97%"></asp:TextBox></td>
                    <td style="width:30%">
                        <asp:RequiredFieldValidator ID="rfvhoten" runat="server" ErrorMessage="Nhập họ tên" ControlToValidate="txthoten"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width:30%">Cơ quan</td>
                    <td style="width:40%">
                        <asp:TextBox ID="txtcoquan" runat="server" Width="97%"></asp:TextBox></td>
                    <td style="width:30%">
                        <asp:RequiredFieldValidator ID="rfvcoquan" runat="server" ErrorMessage="Nhập cơ quan" ControlToValidate="txtcoquan"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width:30%">E-mail</td>
                    <td style="width:40%">
                        <asp:TextBox ID="txtemail" runat="server" Width="97%"></asp:TextBox></td>
                    <td style="width:30%">
                        <asp:RegularExpressionValidator ID="revemail" runat="server" ErrorMessage="Nhập địa chỉ email" ControlToValidate="txtemail" ValidationExpression="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,6}$"></asp:RegularExpressionValidator></td>
                </tr>
                <tr>
                    <td style="width:30%">Mật khẩu</td>
                    <td style="width:40%">
                        <asp:TextBox ID="txtmatkhau" TextMode="Password" runat="server" Width="97%"></asp:TextBox></td>
                    <td style="width:30%">
                        <asp:RequiredFieldValidator ID="rfvmatkhau" runat="server" ErrorMessage="Nhập mật khẩu" ControlToValidate="txtmatkhau"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td style="width:30%">Nhập lại mật khẩu</td>
                    <td style="width:40%">
                        <asp:TextBox ID="txtnlmatkhau" TextMode="Password" runat="server" Width="97%"></asp:TextBox></td>
                    <td style="width:30%">
                        <div style="width:100%;display:flex;flex-direction:column">
                            <asp:RequiredFieldValidator ID="rfvnlmatkhau" runat="server" ErrorMessage="Nhập mật khẩu lần 2" ControlToValidate="txtnlmatkhau"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cmvmatkhau" runat="server" ErrorMessage="Mật khẩu không khớp" ControlToValidate="txtnlmatkhau" ControlToCompare="txtmatkhau"></asp:CompareValidator>
                        </div>
                        
                    </td>
                </tr>
                <tr>
                    <td style="width:30%">Ngày check in</td>
                    <td style="width:40%">
                        <asp:TextBox ID="txtcheckin" runat="server" Width="97%"></asp:TextBox></td>
                    <td style="width:30%">
                        <asp:CompareValidator ID="cmvcheckin" runat="server" ErrorMessage="Nhập ngày check in" ControlToValidate="txtcheckin" Type="Date" Operator="DataTypeCheck"></asp:CompareValidator></td>
                </tr>
                <tr>
                    <td style="width:30%">Số ngày ở</td>
                    <td style="width:40%">
                        <asp:TextBox ID="txtsongay" runat="server" Width="97%"></asp:TextBox></td>
                    <td style="width:30%">
                        <asp:CompareValidator ID="cmvsongay" runat="server" ErrorMessage="Nhập số ngày ở" ControlToValidate="txtsongay" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
                       </td>
                </tr>
                <tr>
                    <td style="width:30%">Loại phòng</td>
                    <td style="width:40%">
                        <asp:DropDownList ID="cbxloaiphong" runat="server" Width="97%">
                            <asp:ListItem Text="Phòng đơn" Value="phongdon" />
                            <asp:ListItem Text="Phòng đôi" Value="phongdoi" />
                            <asp:ListItem Text="Phòng VIP đơn" Value="phongvipdon" />
                            <asp:ListItem Text="Phòng VIP đôi" Value="phongvipdoi" />
                        </asp:DropDownList></td>
                    <td style="width:30%">
                        </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btndangki" runat="server" Text="Đăng kí" OnClick="btndangki_Click" /></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div style="display:flex;justify-content:center;align-items:center">
                            <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
                        </div>
                        </td>
                    
                </tr>
                <tr>
                    <td colspan="3">
                        <div style="display:flex;justify-content:center;align-items:center">
                            <asp:ValidationSummary ID="vctomtatloi" runat="server" />
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
