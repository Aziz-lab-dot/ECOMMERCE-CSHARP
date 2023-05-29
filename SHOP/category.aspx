<%@ Page Title="" Language="C#" MasterPageFile="~/Mastepage.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="SHOP.category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style29 {
            width: 77%;
            height: 115px;
        }
        .auto-style30 {
            width: 77%
        }
        .auto-style31 {
            width: 77%;
            text-align: right;
        }
        .auto-style32 {
            width: 77%;
            height: 115px;
            text-align: right;
        }
        .auto-style33 {
            width: 323px;
        }
        .auto-style34 {
            width: 916px;
        }
        .auto-style35 {
            width: 77%;
            text-align: right;
            font-size: small;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <form id="form1" runat="server">
       
         <h2 style="text-align:center"> <strong> ADD CATEGORY (<span class="auto-style35">attention: ADMIN use only</span>) </strong> </h2>
             <hr style="  width: 30px;
            height: 2px;
            background-color: orange;" >
        
        <div>
            <table class="auto-style34">
                <tr>
                    <td class="auto-style32">Category Name</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txt_catname" runat="server" Width="221px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31">Category Description</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="txt_desc" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29"></td>
                    <td class="auto-style33">
                        <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style33">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style30">&nbsp;</td>
                    <td class="auto-style33">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>

</asp:Content>
