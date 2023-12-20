<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TimKiemMonHoc.aspx.cs" Inherits="Lab6.TimKiemMonHoc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="display:flex;justify-content:center;align-items:center;margin-top:10px;">
        <asp:Label ID="Label1" runat="server" Text="TÌM KIẾM THÔNG TIN MÔN HỌC"></asp:Label>
    </div>
    <div style="display:flex;justify-content:center;align-items:center;margin-top:10px;">
        <asp:Label ID="Label2" runat="server" Text="Nhập mã môn học:"></asp:Label>
        <asp:TextBox ID="txtmamh" runat="server"></asp:TextBox>
        <asp:Button ID="btntimma" runat="server" Text="Tìm theo mã" OnClick="btntimma_Click" />
    </div>
    <div style="display:flex;justify-content:center;align-items:center;margin-top:10px;">
        <asp:Label ID="Label3" runat="server" Text="Nhập tên môn học:"></asp:Label>
        <asp:TextBox ID="txttenmh" runat="server"></asp:TextBox>
        <asp:Button ID="btntimten" runat="server" Text="Tìm theo tên" OnClick="btntimten_Click" />
    </div>
    <div style="display:flex;justify-content:center;align-items:center;margin-top:10px;">
        <asp:GridView ID="grvtimkiem" runat="server" Width="600" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaMH" HeaderText="Mã môn học" />
                <asp:BoundField DataField="TenMH" HeaderText="Tên môn học" />
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
