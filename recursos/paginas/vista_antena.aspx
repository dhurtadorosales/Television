<%@ Page Language="VB" AutoEventWireup="false" CodeFile="vista_antena.aspx.vb" Inherits="recursos_paginas_vista_antena" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Vista Previa Antena 3</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="rs" runat="server" />

        <rsweb:ReportViewer ID="rvAntena" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
            <LocalReport ReportPath="informes\antena3.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="odsAntena" Name="dsAntena" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
    
        <asp:ObjectDataSource ID="odsAntena" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="informes1TableAdapters.dtAntenaTableAdapter">
            <SelectParameters>
                <asp:QueryStringParameter Name="fecha" QueryStringField="a" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>

    </div>
    </form>
</body>
</html>
