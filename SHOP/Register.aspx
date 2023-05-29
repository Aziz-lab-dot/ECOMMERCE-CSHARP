<%@ Page Title="" Language="C#" MasterPageFile="~/Mastepage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SHOP.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style29 {
            width: 735px;
            height: 600px;
        }
        .auto-style30 {
            font-weight: bold;
            text-align: right;
        }
        .auto-style31 {
            text-decoration: underline;
            color: #FF9933;
        }
        .auto-style32 {
            color: #FF9933;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

    <table align="center" border="0" style="background-color: #99CCFF" class="auto-style29">
        <tr>
            <td colspan="2" align="center">
                <h2> REGISTRATION PAGE </h2>

            </td>
          
        </tr>
        <tr>
            <td class="auto-style30">First name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="29px" CssClass="offset-sm-0" Width="219px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
&nbsp;<br />
            </td>
        </tr>
        <tr>
            <td class="auto-style30">last name:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="33px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style30">Email ID:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="33px" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style30">Gender:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="155px">
                    <asp:ListItem>Select gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>other</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style30">Phone:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="32px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style30">Password:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="33px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                &nbsp;<br />
            </td>
        </tr>
        <tr>
            <td class="auto-style30">Confirm password:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Height="33px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
                &nbsp;<br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="password do not match"></asp:CompareValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center" >
                <asp:Button ID="Button1" runat="server" Text="Register" Font-Bold="True" Font-Overline="False" Font-Size="Large" Height="39px" Width="140px" OnClick="Button1_Click" PostBackUrl="~/login.aspx"  />
                 </td>
             
        </tr>
        <tr>
            <td colspan="2" class="text-right" >
                <asp:Label ID="Label1" runat="server"></asp:Label>
           <span class="auto-style23">  &nbsp;  <a href="login.aspx" style="font-size: medium" class="auto-style32"><strong>Already have an account: LOGIN</strong></a><span class="auto-style31"><strong>&nbsp;&nbsp;</strong></span></span>
            </td>
            
        </tr>
       
    </table>
     
    </form>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Content>

