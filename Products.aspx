<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Products</title>
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
			
				
				<div class="clearfix"></div>	
			</div>	
		</div>	
	    <asp:DataList ID="DataList1" runat="server" CellPadding="0" Height="16px" HorizontalAlign="Right" style="margin-left: 0px; margin-top: 71px;" Width="630px">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="pName" runat="server" Text ='<%#Eval("Name")%>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="pSupplier" runat="server" Text ='<%#Eval("SupplierID")%>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="pDescription" runat="server" Text ='<%#Eval("Description")%>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="pPicture" runat="server" Height ="150px" ImageUrl ='<%#"Products/" +Eval("Picture")%>' />
                        </td>
                        <td>
                            <asp:Label ID="pPrice" runat="server" Text ='<%#Eval("UnitPrice")%>'></asp:Label>
                        </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:DataList ID="DataList2" runat="server" HorizontalAlign="Left" CellPadding="0" Height="174px" Width="326px" style="margin-top: 71px">
             <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 170px; margin-top: 25px" Width="156px"></asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Search" Width="69px" />
                        </td>              
                        <td>
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            <asp:ListItem>Ekmek</asp:ListItem>
                            <asp:ListItem>Pasta</asp:ListItem>
                            <asp:ListItem>Kurabiye</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>                
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
       
	    
	</div>
	
	<footer>
		<div class ="copyright">
		<a href="http://www.iku.edu.tr"target="_blank">Istanbul Kultur University </a>
		</div>
	</footer>
    </form>
</body>
</html>
