<%@ Page Title="" Language="VB" MasterPageFile="~/recursos/plantillas/cabecera.master" AutoEventWireup="false" CodeFile="nova.aspx.vb" Inherits="Default4" %>

<asp:Content ID="canalesHead" ContentPlaceHolderID="canalesHead" Runat="Server">
    <title>Nova</title>
    <link rel="stylesheet" href="../estilos/main.css" />
    <script src="../script/script.js"></script>
</asp:Content>

<asp:Content ID="nova" ContentPlaceHolderID="nova" Runat="Server">
    <figure>
        <img src="../../imagenes/nova.png" alt="Nova" class="logoCanal"/><br />
    </figure>

    <asp:ImageButton ID="imgBtnInicio" ImageUrl="~/imagenes/volver.gif" runat="server" ToolTip="Ir a Página Principal" CssClass="imgBtnInicio" PostBackUrl="~/index.aspx"/>
    <asp:ImageButton ID="imgBtnInforme" ImageUrl="~/imagenes/impr.jpg" runat="server" ToolTip="Generar Informe" CssClass="imgBtnInforme" /><br />
    <asp:label ID="lblFecha" runat="server" text="Fecha: " CssClass="lblFecha"></asp:label>
    <input type="date" id="tbCalendario" runat="server" ClientIDMode="Static" />

    <asp:GridView ID="gvProgramacion" runat="server" 
        CssClass="gvProgramacion" 
        AutoGenerateColumns="False" 
        DataSourceID="sqlDtsProgramacion" 
        Width="100%"  
        BackColor="#8995A1" 
        HeaderStyle-BackColor="#59a3a5"
        HeaderStyle-Font-Bold="true"
        HeaderStyle-Height="50px"
        ForeColor="#5555555" 
        RowStyle-BorderColor="SlateGray" 
        AlternatingRowStyle-BackColor="Silver" ShowHeaderWhenEmpty="False">
        <AlternatingRowStyle BackColor="Silver"></AlternatingRowStyle>
        <Columns>

            <asp:TemplateField ItemStyle-Width="15%">
                <ItemTemplate>
                    <asp:Label ID="lblGvHora" runat="server" Text='<%#Eval("hora")%>'></asp:Label>
                </ItemTemplate>
                <HeaderTemplate>
                    <asp:Label ID="lblGvHora" runat="server" Text='HORA'></asp:Label>
                </HeaderTemplate>
            </asp:TemplateField>

            <asp:TemplateField ControlStyle-CssClass="celdaPrograma">
                <ItemTemplate>
                    <asp:Label ID="lblGvPrograma" runat="server" Text='<%#Eval("programa")%>' ToolTip='<%#Eval("comentario") %>'></asp:Label>
                </ItemTemplate>
                <HeaderTemplate>
                    <asp:Label ID="lblGvPrograma" runat="server" Text='PROGRAMA'></asp:Label>
                </HeaderTemplate>
            </asp:TemplateField>

            <asp:TemplateField ControlStyle-CssClass="celdaImagen" ItemStyle-Width="250">
                <ItemTemplate>
                    <asp:Image ID="imgGvImagen" runat="server" ImageUrl=<%#"~/imagenes/" & Eval("imagen")%> ToolTip='<%#Eval("comentario") %>' CssClass="imgGvImagen" Width="200"/>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>

<HeaderStyle BackColor="#59A3A5"></HeaderStyle>

<RowStyle BorderColor="SlateGray"></RowStyle>
</asp:GridView>

<asp:SqlDataSource ID="sqlDtsProgramacion" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ProgramacionTVConnectionString %>" 
    SelectCommand="SELECT Parrilla.hora, Programas.programa, Programas.imagen, Programas.comentario FROM Parrilla INNER JOIN Programas ON Parrilla.idPrograma = Programas.idPrograma WHERE (Parrilla.idCadena = 3) AND (Parrilla.fecha = @fecha)">
    <SelectParameters>
        <asp:ControlParameter ControlID="tbCalendario" Name="fecha" PropertyName="Value" />
    </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
