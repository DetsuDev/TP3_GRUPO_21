<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP3_GRUPO_21.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 166px;
        }
        .auto-style3 {
            width: 152px;
        }
        .auto-style4 {
            width: 152px;
            height: 26px;
        }
        .auto-style5 {
            width: 166px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 152px;
            height: 23px;
        }
        .auto-style8 {
            width: 166px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 216px;
        }
        .auto-style11 {
            height: 26px;
            width: 216px;
        }
        .auto-style12 {
            height: 23px;
            width: 216px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
            <asp:Label ID="lblLocalidades" runat="server" Font-Bold="True" Text="Localidades"></asp:Label>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
            <asp:Label ID="lblNombreLocalidad" runat="server" Text="Nombre de Localidad: "></asp:Label>
                    </td>
                    <td class="auto-style2">
            <asp:TextBox ID="txtLocalidad" runat="server" Width="206px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
            <asp:RequiredFieldValidator 
                ID="rdvLocalidad" runat="server" 
                ControlToValidate="txtLocalidad" ErrorMessage="Ingrese una Localidad" 
                ValidationGroup="GrupoLocalidad" ForeColor="Red">Ingrese una localidad
            </asp:RequiredFieldValidator>
                    </td>
                    <td>
            <asp:CustomValidator
                ID="cvLocalidad" runat="server" 
                ControlToValidate="txtLocalidad" ErrorMessage="La localidad ya existe" 
                OnServerValidate="cvLocalidad_ServerValidate" 
                ValidationGroup="GrupoLocalidad" ForeColor="Red">La localidad ya existe
            </asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
            <asp:Button ID="btnGuardarLoc" runat="server"  Text="Guardar Localidad" OnClick="btnGuardarLoc_Click" ValidationGroup="GrupoLocalidad" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2" style="font-weight: bold;">Usuarios</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Nombre usuario:</td>
                    <td class="auto-style2" style="font-weight: bold;">
            <asp:TextBox ID="txtUsuario" runat="server" Width="206px"></asp:TextBox>
                    </td>
                    <td class="auto-style10">
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Ingrese un usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Contraseña:</td>
                    <td class="auto-style5">
            <asp:TextBox ID="txtPassword" runat="server" Width="206px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Ingrese una contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">Repetir contraseña:</td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtRepetirPassword" runat="server" TextMode="Password" Width="205px"></asp:TextBox>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="tfvPassword" runat="server" ControlToValidate="txtRepetirPassword" ErrorMessage="Vuelva a Ingresar la contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9">
                        <asp:CompareValidator ID="cvRepetirPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRepetirPassword" ErrorMessage="Las contraseñas no son iguales" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Correo electronico:</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="205px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Ingrese un correo" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style6">
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Ingrese un correo válido</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Localidades</td>
                    <td class="auto-style8">
            <asp:DropDownList ID="ddlLocalidades" runat="server" Width="200px">
                <asp:ListItem>-- Seleccione Localidad --</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlLocalidades" ErrorMessage="Seleccione localidad" ForeColor="Red" InitialValue="-- Seleccione Localidad --"></asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar usuario" OnClick="btnGuardarUsuario_Click" />
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
