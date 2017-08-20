<%@ Page Title="" Language="VB" MasterPageFile="~/recursos/plantillas/cabecera.master" AutoEventWireup="false" CodeFile="sexta.aspx.vb" Inherits="_Default" %>
<%@ Register Src="~/miControl.ascx" TagPrefix="tv" TagName="tv_sexta" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="canalesHead" ContentPlaceHolderID="canalesHead" Runat="Server">
    <title>La Sexta</title>
    <link rel="stylesheet" href="../estilos/main.css" />
    <script src="../script/script.js"></script>
</asp:Content>

<asp:Content ID="sexta" ContentPlaceHolderID="sexta" Runat="Server">
    <figure>
        <img src="../../imagenes/lasexta.png" alt="La Sexta" class="logoCanal"/><br />
    </figure>

    <asp:ImageButton ID="imgBtnInicio" ImageUrl="~/imagenes/volver.gif" runat="server" ToolTip="Ir a Página Principal" CssClass="imgBtnInicio" PostBackUrl="~/index.aspx"/>
    <asp:ImageButton ID="imgBtnInforme" ImageUrl="~/imagenes/impr.jpg" runat="server" ToolTip="Generar Informe" CssClass="imgBtnInforme" /><br />
    

    <tv:tv_sexta ID="controlSexta" runat="server" />
    
        <asp:SqlDataSource ID="sqlDscImprimir" runat="server" ConnectionString="<%$ ConnectionStrings:ProgramacionTVConnectionString %>" SelectCommand="SELECT Parrilla.hora, Programas.programa, Programas.imagen, Programas.comentario FROM Parrilla INNER JOIN Programas ON Parrilla.idPrograma = Programas.idPrograma WHERE (Parrilla.idCadena = 2) AND (Parrilla.fecha = @fecha)">
        <SelectParameters>
            <asp:ControlParameter ControlID="controlSexta" Name="fecha" PropertyName="valor" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
