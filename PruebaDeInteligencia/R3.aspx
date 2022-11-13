<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="R3.aspx.cs" Inherits="PruebaDeInteligencia.R3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
             <div class="auto-style2">
             Pregunta 3<br />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl="~/imagenes/pregunta3.PNG" />
            <br />
            <br />
            Respuesta:&nbsp;
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="75px">
                     <asp:ListItem>a</asp:ListItem>
                     <asp:ListItem>b</asp:ListItem>
                     <asp:ListItem>c</asp:ListItem>
                     <asp:ListItem>d</asp:ListItem>
                     <asp:ListItem>e</asp:ListItem>
                     <asp:ListItem>f</asp:ListItem>
                 </asp:DropDownList>
                 <br />
                 <br />
                 <strong>
                 <asp:Label ID="Label1" runat="server" Text="¡Recuerda, guardar las respuestas!"></asp:Label>
                 </strong>
            <br />
                 <br />
                 REPORTE DE RESPUESTAS<br />
             </div>
             <asp:GridView ID="GridView1" runat="server">
             </asp:GridView>
             <br />
             <br />
            <br />
            &nbsp;
            &nbsp;
                        <asp:Button ID="BRegresar" runat="server" OnClick="Button1_Click1" Text="Regresar" />
&nbsp;
                        <asp:Button ID="BGuardar" runat="server" OnClick="Button2_Click" Text="Guardar Respuestas" style="height: 26px" />
&nbsp;
                        <asp:Button ID="BSiguiente" runat="server" OnClick="Button3_Click" Text="Ver Resultados" />


        </div>
    </form>
</body>
</html>
