<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomValidation.aspx.cs" Inherits="Lap3.CustomValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function KiemTraSoChan(source, args) {
            args.IsValid = (args.Value % 2 == 0);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>Số chẵn</td>
                    <td>
                        <asp:TextBox ID="txtsochan" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:CustomValidator ID="valsochan" ClientValidationFunction="KiemTraSoChan" runat="server" ControlToValidate="txtsochan" ErrorMessage="Vui lòng nhập số chẵn" ValidateEmptyText="true" ></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mã bảo mật</td>
                    <td>
                        <asp:TextBox ID="txtmabaomat" runat="server"></asp:TextBox>
                        <asp:Label ID="lblmabaomat" ForeColor="Red" Font-Bold="true" Font-Size="Large" runat="server" Text=""></asp:Label>
                    </td>
                    <td>
                        <asp:CustomValidator ID="valmabaomat" ValidateEmptyText="true" ControlToValidate="txtmabaomat" runat="server" ErrorMessage="Nhập không đúng mã bảo mật" OnServerValidate="valmabaomat_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnkiemtra" runat="server" Text="Kiểm tra" OnClick="btnkiemtra_Click" />
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
