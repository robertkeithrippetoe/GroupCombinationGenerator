<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Solver.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
            .my_text
            {
                font-family:    Arial, Helvetica, sans-serif;
                font-size:      40px;
                font-weight:    bold;
            }
        #form1 {
            text-align: left;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align ="center" style="border:3px solid blue" class="my_text">
        <asp:Label ID="LabelMain" runat="server" Text="Welcome to the Group Combination Generator!" style="text-align:center"></asp:Label>
    </div>
    <br />
    <div align ="center">
        <asp:Label ID="LabelName" runat="server" Text="Written by Robert Keith Rippetoe"></asp:Label>
    </div>
    <div>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Number of Group Members"></asp:Label>
        <br />
        <br />
    
    </div>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="42px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="53px">
            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
            <asp:ListItem Value="6"></asp:ListItem>
            <asp:ListItem Value="7"></asp:ListItem>
            <asp:ListItem Value="8"></asp:ListItem>
            <asp:ListItem Value="9"></asp:ListItem>
            <asp:ListItem Value="10"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Number of Possible Roles For Each Member<br />
        <br />
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="42px" Width="53px">
            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
            <asp:ListItem Value="5"></asp:ListItem>
            <asp:ListItem Value="6"></asp:ListItem>
            <asp:ListItem Value="7"></asp:ListItem>
            <asp:ListItem Value="8"></asp:ListItem>
            <asp:ListItem Value="9"></asp:ListItem>
            <asp:ListItem Value="10"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Please Enter the Name of Each Role"></asp:Label>
        <br />
        <br />
        Role 1<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Role 2<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        Role 3<br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        Role 4<br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        Role 5<br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        Role 6<br />
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
        Role 7<br />
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        Role 8<br />
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        Role 9<br />
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        Role 10<br />
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Generate All Possible Group Combinations" Height="44px" />
    </form>
</body>
</html>

