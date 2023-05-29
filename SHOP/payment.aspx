<%@ Page Title="" Language="C#" MasterPageFile="~/Mastepage.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="SHOP.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style29 {
            width: 649px;
        }
        .auto-style31 {
            width: 972px;
            height: 600px;
        }
        .auto-style32 {
            width: 164px;
            text-align: center;
        }
        .auto-style34 {
            width: 352px;
        }
        .auto-style35 {
            width: 168px;
        }
        .auto-style36 {
            width: 161px;
        }
        .auto-style37 {
            color: #FF9933;
            font-size: large;
            background-color: #660066;
        }
        .auto-style38 {
            font-size: large;
            background-color: #660066;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form id="form1" runat="server">

    <table align="center" border="0" style="background-color: #99CCFF" class="auto-style31">
        <tr>
            <td colspan="2" align="center">
                <h2 class="auto-style29"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PAYMENT </h2>

            </td>
          
        </tr>
        <tr>
            <td class="auto-style32">Card number:</td>
            <td class="auto-style36">
                <asp:TextBox ID="TextBox1" runat="server" Height="29px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">Full<b> name:</b></td>
            <td class="auto-style36">
                <asp:TextBox ID="TextBox2" runat="server" Height="33px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">Expiry date:</td>
            <td class="auto-style36">
                <asp:TextBox ID="TextBox3" runat="server" Height="33px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
            </td>
       
            <td class="auto-style34">CVV</td>
            <td class="auto-style35">
                <asp:TextBox ID="TextBox4" runat="server" Height="32px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style32">Payment amount</td>
            <td class="auto-style36">
                <asp:TextBox ID="TextBox7" runat="server" Height="32px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="Empty field"></asp:RequiredFieldValidator>
            </td>
        </tr>
      
        <tr>
            <td colspan="2" align="center" >
                 <strong>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style38">&nbsp;</span><asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#FF9933" PostBackUrl="~/Thank.aspx" CssClass="auto-style37">PAY</asp:LinkButton></strong></td>
             
        </tr>
        <tr>
            <td colspan="2" align="center" >
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            
        </tr>
    </table>










         <br />
         <br />
         <br />
         <br />










    </form>
</asp:Content>
