<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="baitap2.aspx.cs" Inherits="Lab2.baitap2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <style>
            .container{
                width:100%;
                border:2px solid #00ad19;
                font-size:20px;
            }
            .container .top{
                display:flex;
                justify-content:space-between;
                padding:20px;
                align-items:center;
            }
            .container .top li{
                font-size:20px;
                color:#00ad19;
                list-style:none;
            }
            .container .top li:nth-child(2){
                width: 40%;
                color: black;
            }
            .container .top li:nth-child(2) #txthotenb2{
                width:100%;
                font-size:20px;
                padding:10px;
            }
            .container .top li:nth-child(3) #lbndoiten{
                color:#00ad19;
            }
            .container .bottom{
                background-color:#e9ffb1;
                height:100px;
                border-top: 2px dashed #00ad19;
                display:flex;
                text-align:center;
                justify-content:center;
                align-items:center;
                color:#00ad19;
            }
        </style>
        <div class="container">
            <div class ="top">
                <li>Nhập họ tên</li>
                <li>
                    <asp:TextBox ID="txthotenb2" runat="server"></asp:TextBox>

                </li>
                <li>
                    <asp:LinkButton ID="lbndoiten" runat="server" OnClientClick="return confirm('Bạn có đồng ý thay đổi câu chào không?');" OnClick="lbndoiten_Click">Thay đổi câu chào</asp:LinkButton>
                </li>
            </div>
            <div class="bottom">
                <asp:Label ID="lblcauchao" runat="server" Text="Chào bạn!"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
