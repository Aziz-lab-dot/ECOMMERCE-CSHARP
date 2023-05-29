<%@ Page Title="" Language="C#" MasterPageFile="~/Mastepage.Master" AutoEventWireup="true" CodeBehind="product_catalogue.aspx.cs" Inherits="SHOP.product_catalogue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style30 {
            font-size: medium;
        }
        .auto-style31 {
            float: left;
            width: 44px;
            margin-left: 1px;
        }
        .auto-style36 {
            font-family: Georgia, "Times New Roman", Times, serif;
            font-size: large;
        }
        .auto-style37 {
            width: 1148px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
   
    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       <asp:UpdatePanel ID="UpdatePanel2" runat="server">
          <ContentTemplate> 
              <table>
                  <tr>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td><p> CHECK OUT HERE -> </p></td>
                      <td><img src="Images/shopping-cart.png" class="auto-style31" />
      <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style36" ForeColor="Red" PostBackUrl="~/cart.aspx"></asp:LinkButton></td>
                  </tr>

              </table>


         
        
        
         
                 

        <section>

             <h2 style="text-align:center"> <strong> PRODUCT SECTION </strong> </h2>
             <hr style="  width: 30px;
            height: 2px;
            background-color: orange;" >

             <p style="text-align:center"> <strong> Check out our products below </strong> </p>

            <img src="Images/gpu.jpg"  width="1470" height="500"/>

         </section>

       

        <section class=" mt-5 py-5 ">
            <h2 style="text-align:center"> <strong> PRODUCTS </strong> </h2> 
             <hr style="  width: 30px;
            height: 2px;
            background-color: orange;">
            <p style="text-align:center"> ALL THE AVAILABLE PRODUCTS HAS BEEN LISTED </p>
            </section>
   
                <div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <table>
                                <tr>
                                    <td>
                                        <asp:Panel ID="Pnl_Prod" runat="server" ScrollBars="Auto" Height="700px">
                                            <asp:DataList ID="dlst_prod" runat="server" RepeatColumns="4" Width="400px" Height="291px" ForeColor="#333333">
                                                 <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                <ItemTemplate>
                                                    <table>
                                                      <tr>
                                                        <td style="background-color:black; font-size: medium" class="text-center">
                                                            <a href="prod_details.aspx?pid=<%#Eval("ProdId") %> " class="text-white"><%#Eval("Prodname") %> </a>
                                                        </td>
                                                      </tr>
                                                        <tr>
                                                           <td style="text-align:center">
                                                            <a href="prod_details.aspx?pid=<%#Eval("ProdId") %>"><img src="<%#Eval("Prodimg") %>" height="279" width="356" /></a>

                                                           </td>

                                                        </tr>

                                                        <tr>
                                                            <td style="text-align:center; background-color:black" class="text-white"> <span class="auto-style30">Price : OMR </span>
                                                                <asp:Label ID="lbl_price" runat="server" Text='<%# Bind("price") %>' CssClass="auto-style30" />
                                                           </td>

                                                        </tr>
                                                    <tr>
                                                        <td style="text-align:center;  font-size: medium">
                                                            <asp:Button ID="Button1" runat="server" Text="Add to Cart" OnClick="Button1_Click" CommandArgument='<%# Bind("ProdId")%>' BackColor="Black" Font-Bold="True" Font-Overline="False" ForeColor="#FF6600"/>
                                                        </td>
                                                    </tr>                                              
                                                    
                                                    </table>
                                                </ItemTemplate>
                                                <FooterTemplate></FooterTemplate>

                                            </asp:DataList>
                                        </asp:Panel>
                                        <asp:Panel ID="pnl_cart" runat="server"></asp:Panel>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                            </table>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
        </ContentTemplate>
        </asp:UpdatePanel>       
    </form>
</asp:Content>
