﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomValidatorClient.aspx.cs" Inherits="Samples.CustomValidatorClient.CustomValidatorClient" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sample Custom validator client</title>
</head>
<script language="JavaScript">
    function checkNumber(source, objArgs) {
        if (OnlyNum(objArgs.Value)) {
            objArgs.IsValid = true;
            alert("The values are correct");
        } else {
            objArgs.IsValid = false;
        }
        return;
    }

    function checkChar(source, objArgs) {
        if (OnlyChar(objArgs.Value)) {
            objArgs.IsValid = true;
        } else {
            objArgs.IsValid = false;
        }
        return;
    }

    function OnlyNum(s) {
        var pattern = /^\d+$/;
        if (pattern.test(s))
            return true;
        else
            return false;
    }

    function OnlyChar(s) {
        var pattern = /^[aA-zZ]+$/;
        if (pattern.test(s))
            return true;
        else
            return false;
    }

</script>
<body>
    <form id="form1" runat="server">
      <table>
        <tr>
          <td>Serial number (type only numbers)</td>
          <td>
            <asp:TextBox id="txtSerie" 
            runat="server" 
            maxlentgh="8" 
            Columns="10"></asp:TextBox>
            <asp:requiredFieldValidator id="reqvtxtSerie" 
            runat="server" 
            ControlToValidate="txtSerie" 
            ErrorMessage="* Required"></asp:requiredFieldValidator>
            <asp:CustomValidator id="custvtxtSerie" 
            ControlToValidate="txtSerie" 
            Runat="server" 
            ErrorMessage="* Invalid" 
            ClientValidationFunction="checkNumber"></asp:CustomValidator>
          </td>
        </tr>
        <tr>
          <td>Serial number (type only characters)</td>
          <td>
            <asp:TextBox id="txtSerie2" 
            runat="server" 
            maxlentgh="8" 
            Columns="10"></asp:TextBox>
            <asp:requiredFieldValidator id="reqvtxtSerie2" 
            runat="server" 
            ControlToValidate="txtSerie2" 
            ErrorMessage="* Required"></asp:requiredFieldValidator>
            <asp:CustomValidator id="custvtxtSerie2" 
            ControlToValidate="txtSerie2" 
            Runat="server" 
            ErrorMessage="* Invalid" 
            ClientValidationFunction="checkChar"></asp:CustomValidator>
          </td>
        </tr>
      </table>
      <asp:Button ID="btnSubmit" runat="server" Text="Enviar"></asp:Button>
      <asp:Label ID="lbMsg" runat="server"></asp:Label>
    </form>
    <br />
</body>
</html>
