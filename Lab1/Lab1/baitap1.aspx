<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baitap1.aspx.cs" Inherits="Lab1.baitap1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
        #Label1,#Label2{
            margin-right:20px;
            margin-bottom:20px;
        }

    </style>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" Text="Bài tập 1: Tính tổng 2 số"></asp:Label><br />
            <asp:Label ID="Label1" runat="server" Text="Số 1"></asp:Label>
            <asp:TextBox ID="txtso1" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Số 2"></asp:Label>
            <asp:TextBox ID="txtso2" runat="server"></asp:TextBox><br />
            <asp:Button ID="btntinh" runat="server" Text="Tính" OnClick="Button1_Click" Width="248px" /><br />
            <asp:Label ID="lblketqua" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
