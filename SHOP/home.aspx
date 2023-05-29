<%@ Page Title="" Language="C#" MasterPageFile="~/Mastepage.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="SHOP.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .mx-auto {
            width: 30px;
            height: 2px;
            background-color: orange;
        }
    
              
        
        .auto-style15 {
            text-align: center;
            font-family: Georgia, "Times New Roman", Times, serif;
        }
    
              
        
        .auto-style19 {
            margin-right: 0px;
        }
            
              
        
        .auto-style20 {
        width: 184px;
    }
    .auto-style21 {
        width: 284px;
    }
    .auto-style22 {
        width: 292px;
        height: 172px;
    }
    .auto-style23 {
        width: 221px;
    }
    .auto-style24 {
        width: 202px;
    }
            
              
        
        .auto-style30 {
            width: 618px;
        }
        .auto-style31 {
            width: 1020px;
        }
            
              
        
        .auto-style32 {
            width: 152px;
        }
            
              
        
        .auto-style33 {
        margin-left: 46px;
    }
    .auto-style34 {
        width: 1171px;
    }
            
              
        
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">



       

        <table class="w-100">
            <tr>
                <td><h3 class="text-center" > ADMIN SECTION </h3>
                    <a class="nav-link" href="Product.aspx" style="color:red; font-size: medium">ADD Product (admin) </a>
                    <a class="nav-link" href="category.aspx" style="color:red; font-size: medium">ADD Category (admin)</a></td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style33" PostBackUrl="~/login.aspx" Text="LOG OUT" />
                </td>
                <td>
                </td>
            </tr>
        </table>



       

 <table align="center"  >
    <tr>
        <td>
            <img src="Images/banner1.jpg"  width="1470" height="500" />
               
        </td>
    </tr>
</table>

      


        <section class=" mt-5 py-5 ">

            <table class="w-100">
                <tr>
                    <td class="auto-style32">&nbsp;</td>
                    <td class="auto-style30">            <h2 style="text-align:center; " class="auto-style31" > <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FEATURED PRODUCTS </strong> </h2>
</td>
                    <td><a href="product_catalogue.aspx"><strong><em>Go to full Product -&gt;</em></strong></a></td>
                </tr>
            </table>

             <hr class="mx-auto">
            <p style="text-align:center"> Check out some of our featured products</p>          

        <asp:DataList ID="DataList1" runat="server" DataKeyField="PId" DataSourceID="SqlDataSource1" Height="291px" Width="700px" CellPadding="4" ForeColor="#333333" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="auto-style19">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <ItemTemplate>
                    
                  <table>
                      <tr>
                          <td style="text-align:center; background-color:black" class="auto-style4">
                              <asp:Label ID="Label1" runat="server" Text='<%#Eval("Pname") %>' Font-Bold="true" Font-Names="Open Sans Extrabold" ForeColor="White">

                              </asp:Label>
                          </td>
                      </tr>
                       <tr>
                          <td style="text-align:center" class="auto-style4">
                              <asp:Image ID="Image2" runat="server" Height="279px" Width="356px" BorderColor="#5F98F3" BorderWidth="1px" ImageUrl='<%#Eval("Pimg") %>' />
                          </td>
                      </tr>
                       <tr>
                          <td style="text-align:center; background-color:black" class="auto-style4">
                              <asp:Label ID="Label2" runat="server" Text="Price: OMR " Font-Bold="True" Font-Names="Arial" ForeColor="White" Style="text-align:center">
                              </asp:Label>
                              <asp:Label ID="Label3" runat="server" Text='<%#Eval("pr") %>' Font-Bold="True" Font-Names="Arial" ForeColor="White" Style="text-align:center">
                              </asp:Label>
                          </td>
                      </tr>
                     
                  </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PId], [Pname], [Pimg], [Pr] FROM [HOME]"></asp:SqlDataSource>
            </section>
        

         <section class=" mt-5 py-5 ">

             <h2 style="text-align:center"> <strong>UNLIMITED GAMING </strong> </h2>
             <hr class="mx-auto">

             <p style="text-align:center"> <strong>Gaming made easier with 13th Generation INTEL CORES processors </strong> </p>

             <img src="Images/Full-Size-Banner-Intel13.jpg" width="1470" />
             </section>

       

        
         <section class=" mt-5 py-5 ">

             <h2 style="text-align:center"> <strong> BEST GRAPHICS:BEST PERFORMANCE </strong> </h2>
             <hr class="mx-auto">

             <p style="text-align:center"> <strong> Performance made better with best AMD graphics RADEON RX 7000 series </strong> </p>

             <img src="Images/Full-Size-Banner-RX-7000-v2.jpg" width="1470" />

         </section>

 
       

         <section class=" mt-5 py-5 ">

             <h2 style="text-align:center"> <strong> OUR TRUSTED PARTNERS </strong> </h2>
             <hr class="mx-auto">


            

             
             <table class="w-100">
                 <tr>
                     <td>
                         <img src="Images/p1.png" class="auto-style20" /></td>
                     <td>
                         <img src="Images/P2.png" class="auto-style21" /></td>
                     <td>
                         <img src="Images/P3.png" class="auto-style22" /></td>
                     <td>
                         <img src="Images/p4.png" class="auto-style24" /></td>
                     <td>
                         <img src="Images/p5.png" class="auto-style23" /></td>
                     <td>
                         <img src="Images/p6.png" /></td>
                 </tr>
             </table>


            

             
         </section>


        </form>
   

</asp:Content>
