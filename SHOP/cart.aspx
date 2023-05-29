<%@ Page Title="" Language="C#" MasterPageFile="~/Mastepage.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="SHOP.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style29 {
            text-align: center;
            font-family: Georgia, "Times New Roman", Times, serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
         <h2 style="text-align:center"> <strong> CART <img src="Images/shopping-cart.png" /></strong> </h2>
        
             <hr style="  width: 30px;
            height: 2px;
            background-color: orange;" >
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" OnRowDeleting="GridView1_RowDeleting" AutoGenerateColumns="False" ForeColor="#333333" GridLines="None" Width="1430px">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
                <Columns>
                    <asp:TemplateField HeaderText="Prod ID">
                        <ItemTemplate>
                            <asp:Label ID="cartid" runat="server" Text='<%#Eval("Prodid") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <img src="<%#Eval("Prodimg") %>" height="100" width="80" />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Product Name">
                        <ItemTemplate>
                            <asp:Label ID="bname" runat="server" Text='<%#Eval("Prodname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                           OMR <asp:Label ID="lbl_price" runat="server" Text= '<%# Bind("price") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:TextBox ID="qty" runat="server" Width="20" Text="1" AutoPostBack="True" OnTextChanged="qty_TextChanged"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Total">
                        <ItemTemplate>
                            
                            <asp:Label ID="tcost" runat="server" Width="100" Text='<%#Eval("price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="delete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%#Eval("Prodid") %>' OnCommand="delete_Command"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
         <div class="auto-style29">
             <strong>Total price: OMR <asp:Label ID="Label1" runat="server" Style="position: static"></asp:Label>
             <br />
             <br />
             <br />
             <br />
             <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" PostBackUrl="~/payment.aspx">PAY</asp:LinkButton>
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             </strong>
         </div>
    </form> 
</asp:Content>
