<%@ Page Title="" Language="C#" MasterPageFile="~/Home2.Master" AutoEventWireup="true" CodeBehind="Login1.aspx.cs" Inherits="Project_online.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style type="text/css">
    .style2
    {
        width: 259px;
    }
    .style3
    {
        height: 8px;
    }
    .style4
    {
        height: 9px;
    }
    .style5
    {
        width: 100px;
    }
         .auto-style1 {
             width: 206px;
         }
         .auto-style2 {
             height: 9px;
             width: 206px;
         }
         .auto-style3 {
             height: 8px;
             width: 206px;
         }
         .auto-style4 {
             width: 326px;
             margin-top: 0px;
         }
         .auto-style5 {
             width: 454px;
         }
         .auto-style6 {
             height: 451px;
         }
         .auto-style7 {
             height: 21px;
         }
         .auto-style8 {
             width: 206px;
             height: 21px;
             margin-top: 14px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <table class="auto-style6" align="center">
    <tr>
        <td class="auto-style5">
            User Login Area</td>
    </tr>
    <tr>
        <td class="auto-style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td style="text-align: center" class="auto-style5">
            <table align="center" class="auto-style4" style="border: thin solid #008000">
                <tr>
                    <td class="tblhead" colspan="2" background-color="green">
                        Login Here</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="auto-style1">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Email :
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtemail" runat="server"  Width="140px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txtemail" ErrorMessage="Enter UserName" ForeColor="Black"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        Password :
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtpass" runat="server"  Width="140px" 
                            TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="txtpass" ErrorMessage="Enter Password" ForeColor="Black"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style4">
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td align="left" valign="top" class="auto-style1">
                        <table class="style5">
                            <tr>
                                <td>
                                  <asp:Button ID="btnlogin" runat="server" Text="Login" 
                                        onclick="btnlogin_Click" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                    </td>
                    <td align="left" class="auto-style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <%--<tr>
        <td style="text-align: center; color: Green" class="auto-style5">
            Dont have Username and Password
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registration.aspx">Register Now !!</asp:HyperLink>
        </td>
    </tr>--%>
</table>
</asp:Content>
