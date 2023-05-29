<%@ Page Title="" Language="C#" MasterPageFile="~/Mastepage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SHOP.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
   
    
    
   
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style29 {
            color: #FF6600;
        }
    </style>
    
   
    
    
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

    <table align="center" height="440px" width="619px" style="background-color: #3399FF">
        <tr>
            <td colspan="2" align="center">
                <h2> Login Page</h2></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="center" width="50%">
                <b> Email ID:</b>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Email"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" width="50%"><b> Password:</b></td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server" Width="221px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field Empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="Button1" runat="server" Height="38px" Text="Login" Width="166px" BackColor="#FF6600" Font-Bold="True" Font-Size="Large" ViewStateMode="Enabled" OnClick="Button1_Click" PostBackUrl="~/home.aspx" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
                <br />
            </td>
            <td> <a href="Register.aspx" style="font-size: medium" class="auto-style29"><strong>New user? Please register here</strong></a></td>
        </tr>
      
    </table>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    </form>

</asp:Content>
