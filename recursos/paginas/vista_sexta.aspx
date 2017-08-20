<%@ Page Language="VB" AutoEventWireup="false" CodeFile="vista_sexta.aspx.vb" Inherits="recursos_paginas_vista_sextaaspx" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProgramacionTVConnectionString %>" SelectCommand="SELECT Parrilla.hora, Programas.programa, Programas.imagen, Programas.comentario FROM Parrilla INNER JOIN Programas ON Parrilla.idPrograma = Programas.idPrograma WHERE (Parrilla.idCadena = 2) AND (Parrilla.fecha = @fecha)">
            <SelectParameters>
                <asp:Parameter Name="fecha" />
            </SelectParameters>
        </asp:SqlDataSource>
   
    
    </div>
    </form>
</body>
</html>
