<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baitap4.aspx.cs" Inherits="Lab1.baitap4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <style>
            div{
                margin-bottom:20px;
            }
            #Label1,#Label2{
                margin-right:20px;
            }
            #btntinh{
                margin-right:20px;
                background-color:aqua;
                border-radius:3px;
            }
        </style>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Bài tập 4: Giải phương trình bậc nhất"></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Số a:"></asp:Label>
            <asp:TextBox ID="txtso1" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Số b:"></asp:Label>
            <asp:TextBox ID="txtso2" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btntinh" runat="server" Text="Giải phương trình" OnClick="btntinh_Click" />
        </div>
        <div>
            <asp:Label ID="lblpt" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Label ID="lblketqua" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
