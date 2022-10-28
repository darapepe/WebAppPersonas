<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebAppPersonas._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <table width="70%" cellpadding="0" cellspacing="0" style="border: solid 1px #3366CC;">
                    <tr>
                        <td colspan="4" style="height: 30px; background-color: #77BFFC;">
                            <span class="TextTitle" style="color: #FFFFFF;">Formulario de registro de Personas</span>
                        </td>
                    </tr>
                    <tr>
                        <td height="20px" colspan="0"></td>
                    </tr>
                    <tr>
                        <td width="50%" valign="top">
                            <table id="TableLogin" cellpadding="4" cellspacing="4"
                                runat="server" width="100%">
                                <tr>
                                    <td colspan="3" align="center">
                                        <asp:Label ID="LabelMessage" ForeColor="Red" runat="server" EnableViewState="False"
                                            Visible="False"></asp:Label><br>
                                    </td>
                                </tr>
                                <tr style="font-weight: normal; color: #000000">
                                    <td align="right">
                                        <span>Documento Identidad:</span>;  
                                    </td>
                                    <td align="left" style="padding-left: 10px;">
                                        <asp:TextBox ID="TextBoxIdentidad" runat="server" Width="262px"
                                            MaxLength="50" Height="34px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="TextTitle">Nombres:</span>
                                    </td>
                                    <td align="left" style="padding-left: 10px;">
                                        <asp:TextBox ID="TextBoxNombres" runat="server" Width="261px"
                                            MaxLength="50" Height="34px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="TextTitle">Apellidos:</span>
                                    </td>
                                    <td align="left" style="padding-left: 10px;">
                                        <asp:TextBox ID="TextBoxApellidos" runat="server" Width="258px"
                                            MaxLength="50" Height="34px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right">
                                        <span class="TextTitle">Fecha Nacimiento:</span>
                                    </td>
                                    <td align="left" style="padding-left: 10px;">
                                        <asp:TextBox ID="TextBoxFecha" runat="server" Width="258px"
                                            MaxLength="50" Height="34px"></asp:TextBox>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right"></td>
                                    <td align="left" style="padding-left: 10px;">
                                        <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" Width="87px" />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </center>            
        </div>
    </form>
</body>
</html>
