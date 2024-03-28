<%@ Page Title="" Language="C#" MasterPageFile="~/Home2.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Project_online.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
  
        .style6
        {
            color: Green;
            text-align: right;
            height: 24px;
        }
        .style7
        {
            height: 24px;
        }
  
         .auto-style1 {
             width: 530px;
         }
         .auto-style2 {
             height: 24px;
             width: 530px;
         }
         .auto-style3 {
             height: 91px;
         }
  
         .auto-style4 {
             height: 62px;
         }
         .auto-style5 {
             width: 530px;
             height: 62px;
         }
            .backing{
         background-image:url('image/Background.jpeg')
        }
  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div  class="backing">
    <table class="tbl" align="center">
    <tr>
        <td class="tblhead" colspan="2">
            Registration Form</td>
    </tr>
    <tr>
        <td class="lbl">
            &nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Name :
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtname" runat="server" CssClass="txt" Width="299px" Height="36px" Wrap="False"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Surname :
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtsname" runat="server" CssClass="txt" Width="300px" Height="36px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtsname" ErrorMessage="Enter Surname" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
         <tr>
        <td class="lbl">
            Email :
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtemail" runat="server" CssClass="txt" Width="296px" Height="36px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Enter Email" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
        <tr>
        <td class="auto-style4">
            Gender:</td>
        <td class="auto-style5">
            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Address :
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtadd" runat="server" CssClass="txt" Width="300px" 
                TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtadd" ErrorMessage="Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    
    
    
    <tr>
        <td class="lbl">
            Mobile :
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtmo" runat="server" CssClass="txt" Width="294px" 
                MaxLength="10" Height="38px"></asp:TextBox>
                
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtmo" ErrorMessage="Enter Mobile" ForeColor="Red" 
                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    
   
    <tr>
        <td class="lbl">
            Password :
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtpass" runat="server" CssClass="txt" Width="300px" 
                TextMode="Password" Height="34px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpass" 
                ErrorMessage="Enter number only"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Confirm - Pass :
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt" Width="294px" 
                TextMode="Password" Height="33px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                ErrorMessage="passwod not same" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            &nbsp;&nbsp;</td>
        <td align="left" class="auto-style1">
            <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Register Now" 
                onclick="Button3_Click" Height="62px" Width="174px" />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center" style="color: #006600" class="auto-style3">
            Already have an username and password
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx">Login Here</asp:HyperLink>
        </td>
    </tr>
      
</table>
</div>



</asp:Content>
