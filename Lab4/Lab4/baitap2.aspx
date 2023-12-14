<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="baitap2.aspx.cs" Inherits="Lab4.baitap2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>
        Tìm USCLN
    </h3>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Nhập số a:"></asp:Label>
        <asp:TextBox ID="txtsoa" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Nhập số b:"></asp:Label>
        <asp:TextBox ID="txtsob" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Button ID="btntinh" runat="server" Text="Tìm USCLN" OnClick="btntinh_Click" />
    </div>
    <div>
        <asp:Label ID="lblketqua" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>