<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baitap3.aspx.cs" Inherits="Lab2.baitap3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <style>
            .container{
                border: 2px solid #a70093;
            }
            .container .top{
                background-color:#ffa4fb;
                text-align:center;
                color:#ff00e5;
                font-weight:bold;
                font-size:20px;
                padding:20px 0;
            }
            .container .bottom{
                display:flex;
            }
            .container .bottom .bottom-left{
                width:30%;
            }
            .container .bottom .bottom-right{
                display:flex;
                justify-content:center;
                width: 70%;
                align-items:center;
                text-align:center;
                font-size:20px;
                font-weight:bold;
                color:#a70093;
            }
            .container .bottom .bottom-right div .anh{
                width:180px;
                margin-bottom:10px;
            }
            .container .bottom .bottom-right div .anh #imghoa{
                width:100%;
            }
        </style>
        <div class="container">
            <div class="top">
                Xem Album các loài hoa
            </div>
            <div class="bottom">
                <div class="bottom-left">
                    <asp:ListBox ID="ltbhoa" AutoPostBack="true" runat="server" style="cursor:pointer;height:220px; width:100%; font-size:20px; padding:20px;" OnSelectedIndexChanged="ltbhoa_SelectedIndexChanged">
                        <asp:ListItem Text="Hoa bất tử" Value="hoabattu" Selected/>
                        <asp:ListItem Text="Hoa cúc" Value="hoacuc" />
                        <asp:ListItem Text="Hoa hồng" Value="hoahong" />
                        <asp:ListItem Text="Hoa lan" Value="hoalan" />
                        <asp:ListItem Text="Hoa lys" Value="hoaly" />
                        <asp:ListItem Text="Hoa súng" Value ="hoasung" />
                        <asp:ListItem Text="Hoa dâm bụt" Value="hoadambut" />
                    </asp:ListBox>
                </div>
                <div class="bottom-right">
                    <div>
                        <div class="anh">
                        <asp:Image ID="imghoa" runat="server" ImageUrl="~/image/hoabattu.jpg"/>
                        </div>
                        <asp:Label ID="lbltenhoa" runat="server" Text="Hoa bất tử"></asp:Label>

                    </div>
                </div>

            </div>
            
        </div>
    </form>
</body>
</html>
