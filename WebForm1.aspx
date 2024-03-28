<%@ Page Title="" Language="C#" MasterPageFile="~/Home2.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project_online.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .auto-style1 {
            height: 42px;
            border: thin solid #800080;
        }
    .auto-style2 {
        height: 42px;
        margin-right: 1px;
    }
    .auto-style4{
        border: thin solid #800080;
        color:black;
    }
    .auto-style3{
        border: thin solid #800080;
        color:black;
        border-color:black;
    }
    .auto-style5{
        border: thin solid #800080;
    }
        .auto-style6 {
            width: 1161px;
            height: 110px;
            /*margin-right: 1px;*/
            margin-top: 18px;
        }
    </style>
   
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <table align="center" class="auto-style6">
        <tr>
            <td>
                <div class="auto-style2">
                    <div class="auto-style4">
                <asp:DataList ID="DataList2" runat="server" class="auto-style5" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList2_SelectedIndexChanged" OnItemCommand="DataList2_ItemCommand" RepeatColumns="3" >
                   
                    <ItemTemplate>
                        <table>
                        <tr>
                        <td  class="auto-style3">
                            Product ID:
                        <asp:Label ID="Label" runat="server" Text='<%# Eval("ProductID") %>' />
                            
                            <br />
                            Product Name:
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                            
                            </td>
                            </tr>
                    <tr>
                        <td class="auto-style3">
                            Product Image:
                            
                            <asp:Image ID="Image2" runat="server" Height="343px" Width="295px" Text='<%# Eval("ProductImage") %>' ImageUrl='<%# Eval("ProductImage") %>' BorderColor="#003300" BorderStyle="Solid" />
                        
                        
                            </td>
                     </tr>
                      
                        
                         <tr>
                           <td class="auto-style1">
                        Prices:
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Prices") %>' />
                               <br />
                               <br />
                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:Button ID="btn_buy" runat="server" Text="Buy Now" CommandArgument='<% Eval("ProductID")%>' OnClick="btn_buy_Click" CommandName="buyitems" OnCommand="btn_buy_Command" />
                               </td>
                      </tr>
                     </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                        </div>
                 
                </div>

                <br />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online_ShoppingConnectionString2 %>" SelectCommand="SELECT [ProductID], [ProductName], [Prices], [ProductImage] FROM [Product_details]"></asp:SqlDataSource>
        
            
        </tr>
    </table>
   
</asp:Content>
