<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resultados.aspx.cs" Inherits="PruebaDeInteligencia.Resultados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Resultados de la Prueba</h1>

            La puntucion obtenida es: <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <br />
            <br />

            Pregunta 1: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

            <br />
            <br />

            Pregunta 2: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>

            <br />
            <br />

            Pregunta 3: <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

            <br />
            <br />

            La cantidad de respuestas correctas es: <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>

            <br />
            <br />

            La cantidad de respuestas incorrectas es: <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>


            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Realizar Otra Prueba" />


        </div>
    </form>
</body>
</html>
