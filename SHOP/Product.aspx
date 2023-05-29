<%@ Page Title="" Language="C#" MasterPageFile="~/Mastepage.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="SHOP.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
        
    <style type="text/css">
        .auto-style29 {
            width: 729px;
        }
        .auto-style30 {
            width: 1470px;
        }
        .auto-style31 {
            font-size: small;
            font-family: Georgia, "Times New Roman", Times, serif;
            color: #FF0000;
        }
    </style>
  
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
 

    <form id="form1" runat="server">

         <h2 style="text-align:center"> <strong> ADD PRODUCT (<span class="auto-style31">attention: ADMIN use only</span>)</strong></h2>
             <hr style="  width: 30px;
            height: 2px;
            background-color: orange;" >
        <div>
            <table class="auto-style30">
                <tr>
                    <td class="text-right">Category&nbsp; </td>
                    <td class="auto-style29">
                        <asp:DropDownList ID="ddl_cat" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">Name</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txt_pname" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">Price</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txt_price" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">Model</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txt_model" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="text-right">Description</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txt_pdesc" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">Color</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txt_color" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="text-right">Size</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="txt_size" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="text-right">Image</td>
                    <td class="auto-style29">
                        <asp:FileUpload ID="file_img" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style29">
                        <asp:Button ID="Button1" runat="server" Text="SAVE" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style29">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>

</asp:Content>
