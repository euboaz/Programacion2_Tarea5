﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R2.aspx.cs" Inherits="PruebaDeInteligencia.R2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
               <div>
            Pregunta 2<br />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/pregunta2.PNG" />
            <br />
            <br />
            Respuesta:&nbsp;
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="76px">
                       <asp:ListItem>a</asp:ListItem>
                       <asp:ListItem>b</asp:ListItem>
                       <asp:ListItem>c</asp:ListItem>
                       <asp:ListItem>d</asp:ListItem>
                       <asp:ListItem>e</asp:ListItem>
                       <asp:ListItem>f</asp:ListItem>
                   </asp:DropDownList>
            <br />
            <br />
            &nbsp;
            &nbsp;
            <asp:Button ID="BRegresar" runat="server" OnClick="BRegresar_Click" Text="Regresar" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BSiguiente" runat="server" OnClick="BSiguiente_Click" Text="Siguiente" />


        </div>
    </form>
</body>
</html>
