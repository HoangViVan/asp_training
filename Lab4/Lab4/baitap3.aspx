<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="baitap3.aspx.cs" Inherits="Lab4.baitap3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <b>Đăng ký thông tin sinh viên</b>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Họ tên"></asp:Label>
        <asp:TextBox ID="txthoten" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvhoten" runat="server" ErrorMessage="Bạn cần nhập họ tên" ControlToValidate="txthoten" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div>
    <asp:Label ID="Label2" runat="server" Text="User"></asp:Label>
    <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvuser" runat="server" ErrorMessage="Bạn cần nhập user" ControlToValidate="txtuser" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
    <div>
    <asp:Label ID="Label3" runat="server" Text="Pass"></asp:Label>
    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvpass" runat="server" ErrorMessage="Bạn cần nhập pass" ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
    <div>
        <asp:Label ID="Label4" runat="server" Text="Nhập lại pass"></asp:Label>
        <asp:TextBox ID="txtnlpass" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvnhpass" runat="server" ErrorMessage="Bạn cần nhập lại pass" ControlToValidate="txtnlpass" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="covnlpass" runat="server" ErrorMessage="Mật khẩu không khớp" ForeColor="Red" ControlToValidate ="txtnlpass" ControlToCompare="txtpass"></asp:CompareValidator>
    </div>
    <div>
    <asp:Label ID="Label5" runat="server" Text="Ngày sinh"></asp:Label>
    <asp:TextBox ID="txtnamsinh" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="cvlnamsinh" runat="server" Type="Date" Operator="DataTypeCheck" ErrorMessage="Bạn cần nhập ngày sinh" ControlToValidate="txtnamsinh" ForeColor="Red"></asp:CompareValidator>
</div>
    <div>
    <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revemail" runat="server" ErrorMessage="Bạn cần nhập email"  ControlToValidate="txtemail" ValidationExpression="^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,6}$" ForeColor="Red"></asp:RegularExpressionValidator>
</div>
    <div>
    <asp:Label ID="Label7" runat="server" Text="Địa chỉ"></asp:Label>
    <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvdiachi" runat="server" ErrorMessage="Bạn cần nhập địa chỉ" ControlToValidate="txtdiachi" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
    <div>
    <asp:Label ID="Label9" runat="server" Text="Sở thích"></asp:Label>
    <asp:TextBox ID="txtsothich" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvsothich" runat="server" ErrorMessage="Bạn cần nhập sở thích" ControlToValidate="txtsothich" ForeColor="Red"></asp:RequiredFieldValidator>
</div>
    <div>
        <asp:Button ID="btndangky" runat="server" Text="Đăng ký" OnClick="btndangky_Click" />
    </div>
    <div>
        <asp:Label ID="lblthongbao" runat="server" Text=""></asp:Label>
        
    </div>
</asp:Content>