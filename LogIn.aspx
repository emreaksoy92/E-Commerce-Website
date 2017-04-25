<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIN</title>
    <link rel="stylesheet" type="text/css" href="mystyle.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <img src="Credentials/logo.png" style="width:250px; height:150px;margin-left:800px;"/>
    <div>
    <div class ="page">
		<div class ="header">
			<div class="title">
				<div class ="menu">
					<ul>
					<li> <a href="Home.aspx ">Home</a> </li>
					<li> <a href="Products.aspx ">Products</a> </li>
					<li><a href="Contacts.aspx ">Contacts </a></li>
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
                <td><asp:Label ID="label4" runat="server" Text="Email"></asp:Label></td>
                <td><asp:TextBox ID="uEmail" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="uEmail" ErrorMessage="Enter an Email" ForeColor="Red"></asp:RequiredFieldValidator></td>
                <td>&nbsp;</td>
            </tr>
            <tr><td><asp:Button ID="Button1" runat="server" Text="Submit"  OnClick="Button1_Click"/></td></tr>
        </table>
        </div>     
    </div>
    </form>
</body>
</html>
