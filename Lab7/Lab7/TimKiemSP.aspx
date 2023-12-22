<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TimKiemSP.aspx.cs" Inherits="Lab7.TimKiemSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Label ID="Label3" runat="server" Text="TÌM KIẾM SẢN PHẨM"></asp:Label>
    </div>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Mã SP:"></asp:Label>
        <asp:TextBox ID="txtmasp" runat="server"></asp:TextBox>
        <asp:Button ID="btnmasp" runat="server" Text="Tìm theo mã SP" OnClick="btnmasp_Click" />
    </div>
        <div>
        <asp:Label ID="Label2" runat="server" Text="Tên SP:"></asp:Label>
        <asp:TextBox ID="txttensp" runat="server"></asp:TextBox>
        <asp:Button ID="btntensp" runat="server" Text="Tìm theo tên SP" OnClick="btntensp_Click" />
    </div>
    <div>
        <asp:GridView ID="grvsp" Width="500" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="Mã sản phẩm" />
                <asp:BoundField DataField="TenSP" HeaderText="Tên sản phẩm" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
</asp:Content>
