<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomValidatorServer.aspx.cs" Inherits="Samples.CustomValidatorServer.CustomValidatorServer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Custom Validator Server Sample</title>
</head>
<body>
       <form id="form1" runat="server">
    <table>
    <tr>
        <td>Serial number (type only numbers)</td>
        <td>
        <asp:TextBox ID="txtSerie" 
        runat="server" 
        MaxLength="8" 
        Columns="10"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqvtxtSerie" 
        runat="server" 
        ControlToValidate="txtSerie" 
        ErrorMessage="*Required"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="custvtxtSerie" 
        runat="server" 
        ControlToValidate="txtSerie" 
        OnServerValidate="checkNum" 
        ErrorMessage="* Invalid"></asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td>Serial number (type only characters)</td>
        <td>
        <asp:TextBox id="txtSerie2" 
        runat="server" 
        Maxlength="8" 
        Columns="10"></asp:TextBox>
        <asp:RequiredFieldValidator id="reqvtxtSerie2" 
        runat="server" 
        ControlToValidate="txtSerie2" 
        ErrorMessage="* Required"></asp:RequiredFieldValidator>
        <asp:CustomValidator id="custvtxtSerie2" 
        runat="server" 
        ControlToValidate="txtSerie2" 
        OnServerValidate="checkChar" 
        ErrorMessage="* Invalid"></asp:CustomValidator>
        </td>
        </tr>
    </table>
    <br />
    <asp:Button id="btnSubmit" 
    runat="server" 
    Text="Send"></asp:Button >
    <br />
    <asp:Label ID="lbMsg" runat="server"></asp:Label>
    </form>
</body>
</html>
