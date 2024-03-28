<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Product.aspx.cs" Inherits="Project_online.Add_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style>

          .backing{
         background-image:url('image/Background.jpeg')
        }
    </style>
  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div  class="backing">
     <table style="background-color:#5f98f3;" align:"center" align="center" class="auto-style9">
      
                <tr>
                    <td align="center" colspan="2" class="auto-style3">
                        <h1>Adding Products</h1>
                        <hr />
                    </td>
                </tr>
            
                  <tr>
                    <td align="center" widtg="50%" class="auto-style15">
                        <h3>
                            Product Name:</h3>
                        </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtName" runat="server" Height="31px" Width="299px"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="txtName" Display="Dynamic"
                                ErrorMessage="Product Name Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                            </td>
                        </tr>
             
                 <tr>
                    <td align="center" widtg="50%" class="auto-style17">
                        <h3>
                            Product Price(Rs):</h3>
                        </td>
                        <td class="auto-style18">
                            <asp:TextBox ID="txtPrice" runat="server" CssClass="auto-style2" Height="33px" Width="297px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                ControlToValidate="txtPrice" Display="Dynamic"
                                ErrorMessage="Price Is Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                       
                            
                     </td>
                        </tr>
                 <tr>
                    <td align="center" widtg="50%" class="auto-style16">
                        <h3>
                            Product Image:</h3>
                        </td>
                        <td class="auto-style19">
             
                            <asp:FileUpload ID="imageUpload1" runat="server" Height="37px" Width="301px" />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="imageUpload1" Display="Dynamic"
                          ErrorMessage="Image Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                        </tr>
                <tr>
                    <td class="auto-style12" align="center">
                         <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Add" Font-Bold="true"
                             ForeColor="Black" Height="79px" Width="266px" />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <br />
                         <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Larger" NavigateUrl="~/Admin.aspx">Goto Back</asp:HyperLink>
                    </td>
                </tr>
        
            </table>

          </div>





</asp:Content>
