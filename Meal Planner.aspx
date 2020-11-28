<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Meal Planner.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 582px;
        }
        .auto-style2 {
            height: 67px;
            text-align: center;
            background-color: #CCCCCC;
        }
        .auto-style3 {
            width: 195px;
            background-color: #99FF99;
        }
        .auto-style4 {
            width: 195px;
            height: 89px;
            background-color: #99FF99;
        }
        .auto-style5 {
            height: 89px;
        }
        .auto-style6 {
            height: 89px;
            width: 518px;
            background-color: #99FF99;
        }
        .auto-style7 {
            width: 518px;
            background-color: #99FF99;
        }
        .auto-style11 {
            height: 89px;
            width: 722px;
            background-color: #99FF99;
        }
        .auto-style12 {
            width: 722px;
            background-color: #99FF99;
        }
        .auto-style13 {
            width: 195px;
            height: 142px;
            background-color: #66CCFF;
        }
        .auto-style14 {
            width: 722px;
            height: 142px;
            background-color: #66CCFF;
        }
        .auto-style15 {
            width: 518px;
            height: 142px;
            background-color: #66CCFF;
        }
        .auto-style16 {
            width: 518px;
            height: 142px;
            background-color: #FFCC66;
        }
        .auto-style17 {
            width: 722px;
            height: 142px;
            background-color: #FFCC66;
        }
        .auto-style18 {
            width: 195px;
            height: 142px;
            background-color: #FFCC66;
        }
    </style>
</head>
<body style="width: 1557px; height: 561px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="3">Dave&#39;s Meal and Exercise Planner</td>
            </tr>
            <tr>
                <td class="auto-style4">Salad bar program<br />
                    (Select items)</td>
                <td class="auto-style11">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="True" Height="63px" RepeatColumns="4" RepeatDirection="Horizontal" Width="526px">
                        <asp:ListItem Value="25">Peas</asp:ListItem>
                        <asp:ListItem Value="65">Corn</asp:ListItem>
                        <asp:ListItem Value="431">Kidney beans</asp:ListItem>
                        <asp:ListItem Value="416">Black beans</asp:ListItem>
                        <asp:ListItem Value="17">Green peppers</asp:ListItem>
                        <asp:ListItem Value="5">Cucumbers</asp:ListItem>
                        <asp:ListItem Value="20">Carrots</asp:ListItem>
                        <asp:ListItem Value="22">Cherry tomatoes</asp:ListItem>
                        <asp:ListItem Value="226">Chicken</asp:ListItem>
                        <asp:ListItem Value="398">Ham</asp:ListItem>
                        <asp:ListItem Value="284">Bacon bits</asp:ListItem>
                        <asp:ListItem Value="163">Croutons</asp:ListItem>
                        <asp:ListItem Value="16">Spinach</asp:ListItem>
                        <asp:ListItem Value="15">Romaine lettuce</asp:ListItem>
                        <asp:ListItem Value="174">Olive oil</asp:ListItem>
                        <asp:ListItem Value="3">Vinegar</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:Button ID="Button1" runat="server" Text="Clear Selection" />
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Height="152px" TextMode="MultiLine" Width="332px"></asp:TextBox>
                    <asp:Image ID="Image1" runat="server" Height="161px" ImageAlign="Top" Width="176px" />
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style18">Did you exercise after lunch?<br />
                    (Select items)</td>
                <td class="auto-style17">
                    <asp:CheckBoxList ID="CheckBoxList3" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                        <asp:ListItem Value="563">Running (1hr)</asp:ListItem>
                        <asp:ListItem Value="232">Walking (1hr)</asp:ListItem>
                        <asp:ListItem Value="598">Cycling (1hr)</asp:ListItem>
                        <asp:ListItem Value="253">General housework (1hr)</asp:ListItem>
                        <asp:ListItem Value="289">Gardening (1hr)</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:Button ID="Button3" runat="server" Text="Clear Selection" />
                </td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox3" runat="server" Height="152px" TextMode="MultiLine" Width="332px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Dinner program (Select items)</td>
                <td class="auto-style14">
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" AutoPostBack="True" Height="136px" RepeatColumns="4" RepeatDirection="Horizontal" Width="650px">
                        <asp:ListItem Value="723">Chicken parmesan</asp:ListItem>
                        <asp:ListItem Value="679">Medium-rare steak</asp:ListItem>
                        <asp:ListItem Value="112">Medium sweet potato</asp:ListItem>
                        <asp:ListItem Value="51">Steamed brocolii</asp:ListItem>
                        <asp:ListItem Value="224">Twice baked potato</asp:ListItem>
                        <asp:ListItem Value="62">Side of fruit</asp:ListItem>
                        <asp:ListItem Value="482">Medium french fries</asp:ListItem>
                        <asp:ListItem Value="276">Garlic rice</asp:ListItem>
                        <asp:ListItem Value="1205">12&quot; Cheese pizza</asp:ListItem>
                        <asp:ListItem Value="125">Steamed asparagus</asp:ListItem>
                    </asp:CheckBoxList>
                    <asp:Button ID="Button2" runat="server" Text="Clear Selection" Width="127px" />
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox2" runat="server" Height="152px" TextMode="MultiLine" Width="332px"></asp:TextBox>
                    <asp:Image ID="Image2" runat="server" Height="161px" ImageAlign="Baseline" Width="176px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Click button for suprise</td>
                <td class="auto-style12">
                    <asp:Button ID="Button4" runat="server" Text="Click here" />
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox4" runat="server" Height="152px" TextMode="MultiLine" Width="332px"></asp:TextBox>
                    </td>
            </tr>
        </table>
    </form>
</body>
</html>
