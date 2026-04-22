<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3_GRUPO_21.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblLocalidades" runat="server" Font-Bold="True" Text="Localidades"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblNombreLocalidad" runat="server" Text="Nombre de Localidad: "></asp:Label>
            <asp:TextBox ID="txtLocalidad" runat="server" Width="206px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rdvLocalidad" runat="server" ControlToValidate="txtLocalidad" ErrorMessage="Ingrese una Localidad"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="btnGuardarLoc" runat="server"  Text="Guardar Localidad" OnClick="btnGuardarLoc_Click" />
        </div>
    </form>
</body>
</html>
