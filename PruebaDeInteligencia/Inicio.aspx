<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="PruebaDeInteligencia.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 21px;
        }
        .auto-style2 {
            margin-left: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Cedula:<asp:TextBox ID="TCedula" runat="server" CssClass="auto-style1" OnTextChanged="TCedula_TextChanged"></asp:TextBox>
            <br />
            <br />
            Nombre:<asp:TextBox ID="TNombre" runat="server" CssClass="auto-style2"></asp:TextBox>
            <br />
            <br />
            Genero:&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RBMasculino" Text="Masculino" runat="server" /><asp:RadioButton ID="RBFemenino" Text="Femenino" runat="server" />


            <br />
            <br />
            <asp:Button ID="BSiguiente" runat="server" Height="49px" OnClick="Button1_Click" Text="Iniciar Prueba" Width="96px" />


        &nbsp;&nbsp;&nbsp;


        </div>
    </form>
</body>
</html>
