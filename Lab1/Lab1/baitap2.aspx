<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baitap2.aspx.cs" Inherits="Lab1.baitap2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <style>
        div{
            margin-bottom:20px;
        }
        #Label1,#Label2{
            margin-right:20px;
        }
        #btntong,#btnhieu,#btntich,#btnthuong{
            margin-right:20px;
            background-color:aqua;
            border-radius:3px;
        }
    </style>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" Text="Bài tập 2"></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Số 1:"></asp:Label>
            <asp:TextBox ID="txtso1" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Số 2: Tính tổng, hiệu, tích và thương 2 số"></asp:Label>
            <asp:TextBox ID="txtso2" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="btntong" runat="server" Text="Tổng" OnClick="btntong_Click" />
            <asp:Button ID="btnhieu" runat="server" Text="Hiệu" OnClick="btnhieu_Click" />
            <asp:Button ID="btntich" runat="server" Text="Tích" OnClick="btntich_Click" />
            <asp:Button ID="btnthuong" runat="server" Text="Thương" OnClick="btnthuong_Click" />
        </div>
        <div>
            <asp:Label ID="lblketqua" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
