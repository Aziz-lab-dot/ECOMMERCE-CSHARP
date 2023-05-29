<%@ Page Title="" Language="C#" MasterPageFile="~/Mastepage.Master" AutoEventWireup="true" CodeBehind="prod_details.aspx.cs" Inherits="SHOP.prod_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div>
            <h2 style="text-align:center"> <strong> PRODUCT DETAILS </strong> </h2>
             <hr style="  width: 30px;
            height: 2px;
            background-color: orange;">
          
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:ListView ID="ListView1" runat="server" >
            <Itemtemplate>
                <table style="width:1470px">
                   
                    <tr style="text-align:center">
                        <td>
                            <img src="<%#Eval("Prodimg") %>" height="250" width="200" style="text-align:center" />
                        </td>
                       </tr>
                    <tr style="text-align:center">
                        <td>
                            Product Name : &nbsp<span><%#Eval("Prodname") %></span><br />Product Price: &nbsp<span>OMR: <%#Eval("price") %> </span><br />
                            Product Description: &nbsp<span><%#Eval("Proddesc") %></span><br />Product Model: &nbsp<span><%#Eval("Prodmodel") %></span><br />Product Color: &nbsp<span><%#Eval("Color") %></span><br />Product Size : &nbsp<span><%#Eval("size") %></span><br /></td>
                    </tr>

                </table>
            </Itemtemplate>
    </asp:ListView>
            <br /><br />
   <a href="product_catalogue.aspx">Go to Product Catalogue></a>
        </div>
    </form>

</asp:Content>
