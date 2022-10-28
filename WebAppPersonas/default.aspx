<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebAppPersonas._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <center>
                <table width="40%" cellpadding="0" cellspacing="0" style="border: solid 1px #3366CC;">
                    <tr>
                        <td colspan="4" style="height: 30px; background-color: #77BFFC;">
                            <center><span style="color: #FFFFFF; vertical-align: middle; display: inline-block"><b>Formulario de registro de Personas</b></span></center>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="LabelMessage" ForeColor="Red" runat="server" EnableViewState="False" Visible="False"></asp:Label>
                            <br /><br />
                        </td>
                    </tr>
                    <tr style="font-weight: normal; color: #000000">                        
                        <td align="left" style="padding-left: 10px;">
                            <span><b>Documento Identidad:</b></span>
                            <asp:TextBox ID="TextBoxIdentidad" runat="server" Width="258px" MaxLength="15" Height="34px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Identidad" runat="server" ControlToValidate="TextBoxIdentidad" ErrorMessage="Este valor es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>                      
                        <td align="left" style="padding-left: 10px;">
                            <span><b>Nombres:</b></span>
                            <asp:TextBox ID="TextBoxNombres" runat="server" MaxLength="80" Width="258px" Height="34px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Nombres" runat="server" ControlToValidate="TextBoxNombres" ErrorMessage="Este valor es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>                       
                        <td align="left" style="padding-left: 10px;">
                            <span><b>Apellidos:</b></span>
                            <asp:TextBox ID="TextBoxApellidos" runat="server" Width="258px" MaxLength="80" Height="34px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Apellidos" runat="server" ControlToValidate="TextBoxApellidos" ErrorMessage="Este valor es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>                        
                        <td align="left" style="padding-left: 10px;">
                             <span><b>Fecha Nacimiento:</b></span>
                            <asp:TextBox ID="TextBoxFecha"  runat="server" Width="258px" MaxLength="10" Height="34px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="Fecha" runat="server" ControlToValidate="TextBoxFecha" ErrorMessage="Este valor es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br /><br /><br />
                        </td>
                    </tr>
                    <tr>                        
                        <td align="left" style="padding-left: 10px;">
                            <asp:Button ID="Button1" runat="server" Text="Agregar Persona" OnClick="Button1_Click" Width="150px" />
                            <br /><br />
                        </td>
                    </tr>
                </table>
            </center>            
        </div>
    </form>
</body>
</html>
