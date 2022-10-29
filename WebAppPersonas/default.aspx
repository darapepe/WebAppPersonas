<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebAppPersonas._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Darwin Perez Perez</title>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>
    <link rel="stylesheet" href="StyleSheet1.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-wrap">
            <center>
                <table width="90%" cellpadding="0" cellspacing="0" style="border: solid 1px #3366CC;">
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
                            <asp:TextBox ID="TextBoxIdentidad" runat="server" Width="258px" MaxLength="15" Height="34px" placeholder="Identidad"></asp:TextBox>
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
                            <br /><br />
                        </td>
                    </tr>
                    <tr>                        
                        <td align="left" style="padding-left: 10px;">
                            <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
                            <script type="text/javascript">                                
                                $(document).ready(function () {
                                    $('.add_address').click(function () {
                                        $('p.address:last').after('<p class="address">' + $('p.address').html() + '</p>');
                                    });
                                });
                            </script>
                            <p class="address">
                                <span><b>Direccion Fisica:</b></span>
                            <asp:TextBox ID="TextBoxDir" runat="server" Width="258px" MaxLength="150" Height="34px"></asp:TextBox>
                                <select id="tipoAddress" name="tipoAddress[]" runat="server">
                                    <option value="Casa">Casa</option>                                    
                                    <option value="Oficina">Oficina</option>
                                </select>                                
                            </p>
                            <a href="javascript:void(0);" class="add_address">Agregar Direccion</a>
                            <br />
                            <br />
                            <br />                            
                        </td>
                    </tr>
                    <tr>                        
                        <td align="left" style="padding-left: 10px;">
                            <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
                            <script type="text/javascript">                                
                                $(document).ready(function () {
                                    $('.add_addressMail').click(function () {
                                        $('p.addressMail:last').after('<p class="addressMail">' + $('p.addressMail').html() + '</p>');
                                    });
                                });
                            </script>
                            <p class="addressMail">
                                <span><b>Correo Electronico:</b></span>
                            <asp:TextBox ID="TextBoxCorreo" runat="server" Width="258px" MaxLength="150" Height="34px"></asp:TextBox>                                                            
                            </p>
                            <a href="javascript:void(0);" class="add_addressMail">Agregar Correo</a>
                            <br />
                            <br />
                            <br />                            
                        </td>
                    </tr>
                    <tr>                        
                        <td align="left" style="padding-left: 10px;">
                            <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
                            <script type="text/javascript">                                
                                $(document).ready(function () {
                                    $('.add_phone').click(function () {
                                    $('p.number:last').after('<p class="number">' + $('p.number').html() + '</p>');
                                    });
                                });
                            </script>
                            <p class="number">
                                <span><b>Telefonos:</b></span>
                            <asp:TextBox ID="TextBoxTel" runat="server" Width="258px" MaxLength="10" Height="34px"></asp:TextBox>
                                <select id="tipo" name="tipo[]" runat="server">
                                    <option value="Casa">Casa</option>
                                    <option value="Celular">Celular</option>
                                    <option value="Oficina">Oficina</option>
                                </select>                                
                            </p>
                            <a href="javascript:void(0);" class="add_phone">Agregar Telefono</a>
                            <br />
                            <br />
                            <br />
                            <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>

                    <tr>                        
                        <td align="left" style="padding-left: 10px;">
                            <asp:Button ID="Button1" runat="server" Text="Agregar Persona" OnClick="Button1_Click" class="button"/>
                            <br /><br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="grdPersonas" runat="server">
                                <AlternatingRowStyle BackColor="White" />
                                <HeaderStyle BackColor="#003300" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </center>            
        </div>
    </form>
</body>
</html>
