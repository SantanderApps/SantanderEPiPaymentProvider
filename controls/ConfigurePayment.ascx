<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ConfigurePayment.ascx.cs" Inherits="Consid.SantanderCommerce.Santander.ConfigurePayment" %>

<br/>
<h1>System configuration</h1>
<table>
	<tbody>
	 <tr>
		<td class="FormLabelCell">Test mode:</td>
		<td class="FormFieldCell">
			<div class="margin-form">
			    <asp:RadioButton Checked="false" runat="server" ID="TestFlagYes" GroupName="TestFlag" /> Yes
			    <asp:RadioButton Checked="true" runat="server" ID="TestFlagNo" GroupName="TestFlag" /> No
			</div>
        </td>
    </tr>
     <tr>
        <td class="FormLabelCell">Certificate name:</td>
		<td class="FormFieldCell">
			<asp:TextBox ID="CertificateName" runat="server"></asp:TextBox>
        </td>
    </tr>
     <tr>
        <td class="FormLabelCell">EC Webservice url:</td>
		<td class="FormFieldCell">
			<asp:TextBox ID="ECWebSiteText" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    </tbody>
</table>
<br/>
<h1>Web service parameters</h1>
<table>
	<tbody>
	 <tr>
        <td class="FormLabelCell">Store Id:</td>
		<td class="FormFieldCell">
			<asp:TextBox ID="StoreIdText" runat="server"></asp:TextBox>
        </td>
    </tr>    	
    <tr>
        <td class="FormLabelCell">Merchant number:</td>
		<td class="FormFieldCell">
			<asp:TextBox ID="MerchantNumberText" runat="server"></asp:TextBox>
        </td>
    </tr>    
    <tr>
        <td class="FormLabelCell">Currency:</td>
		<td class="FormFieldCell">
			<asp:TextBox ID="CurrencyText" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="FormLabelCell">User Id:</td>
		<td class="FormFieldCell">
			<asp:TextBox ID="UserIdText" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="FormLabelCell">User password:</td>
		<td class="FormFieldCell">
			<asp:TextBox ID="UserPasswordText" runat="server"></asp:TextBox>
        </td>
    </tr>           
	</tbody>
</table>