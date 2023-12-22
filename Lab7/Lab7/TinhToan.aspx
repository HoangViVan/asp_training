<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TinhToan.aspx.cs" Inherits="Lab7.TinhToan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <asp:Label ID="Label2" runat="server" Text="Tính tổng các số từ 1 đến N"></asp:Label>
    </div>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Nhập số N:"></asp:Label>
        <asp:TextBox ID="txtson" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtson" ValidationExpression="^[0-9]{1,2}$" ForeColor="Red" ErrorMessage="Nhập số từ 0 đến 100"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:Button ID="btntinh" runat="server" Text="Tính" OnClick="btntinh_Click" />
    </div>
    <div>
        <asp:TextBox ID="txtthongbao" runat="server"></asp:TextBox>
    </div>
</asp:Content>
