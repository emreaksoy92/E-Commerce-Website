<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Sign Up</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <img src="Credentials/logo.png" style="width:250px; height:150px;margin-left:800px;"/>
    <div class ="page">
		<div class ="header">
			<div class="title">
				<div class ="menu">
					<ul>
					<li> <a href="Home.aspx ">Home</a> </li>
					<li> <a href="Products.aspx ">Products</a> </li>
					<li><a href="Contact.aspx ">Contacts </a></li>
					<li><a href="AboutUs.aspx ">About Us </a></li>
					</ul>
				</div>
                </div>
            </div>       
        <table style="width: 100%;">
            <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
                <td><asp:TextBox ID="uName" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uName" ErrorMessage="Enter a Username" ForeColor="Red" ></asp:RequiredFieldValidator></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td><asp:TextBox ID="uPassWord" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="uPassWord" ErrorMessage="Enter a Password" ForeColor="Red" ></asp:RequiredFieldValidator></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Retype Password"></asp:Label></td>
                <td><asp:TextBox ID="uPassWord1" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="uPassWord1" ErrorMessage="Retype Password" ForeColor="Red" ></asp:RequiredFieldValidator></td>
                <td><asp:CompareValidator ID="CompareValidator1" ControlToValidate ="uPassWord1" ControlToCompare="uPassWord" runat="server" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:Label ID="label4" runat="server" Text="Email"></asp:Label></td>
                <td><asp:TextBox ID="uEmail" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="uEmail" ErrorMessage="Enter an Email" ForeColor="Red"></asp:RequiredFieldValidator></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><asp:CheckBox ID="chkRememberMe" runat="server" /><br /></td>
            </tr>
            <tr>
                <td><asp:Button ID="Button1" runat="server" Text="Save"  OnClick="Button1_Click"/></td>
                <td>
                    <asp:Label ID="lblAlert" runat="server" Text="Result"></asp:Label></td>
            </tr>
        </table>

            
        

            
        </div>
    <div>
    
    </div>
    </form>
</body>
</html>
