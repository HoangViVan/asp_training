<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baitap3.aspx.cs" Inherits="Lab1.baitap3" %>

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
            #Label1,#Label2,#Label4{
                margin-right:20px;
            }
            #btnsolonnhat{
                margin-right:20px;
                background-color:aqua;
                border-radius:3px;
            }
        </style>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Bài tập 3: Tìm số lớn nhất trong 3 số"></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Số 1:"></asp:Label>
            <asp:TextBox ID="txtso1" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Số 2:"></asp:Label>
            <asp:TextBox ID="txtso2" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Số 3:"></asp:Label>
            <asp:TextBox ID="txtso3" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btnsolonnhat" runat="server" Text="So sánh" OnClick="btnsolonnhat_Click" />
        </div>
        <div>
            <asp:Label ID="lblketqua" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
