﻿Imports Microsoft.Reporting.WebForms
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    Private Sub _Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Datos del gridview vacíos
        controlSexta.datosVacios() = "No existe programación para este día"
    End Sub

    Private Sub imgBtnInforme_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnInforme.Click
        'Variables
        Dim avisos As Warning() = Nothing
        Dim streamids As String() = Nothing
        Dim mimeType As String = Nothing
        Dim encoding As String = Nothing
        Dim extension As String = Nothing
        Dim bytes As Byte()
        Dim deviceInfo As String = "<DeviceInfo>" &
    " <OutputFormat>PDF</OutputFormat>" &
    " <PageWidth>8.5in</PageWidth>" &
    " <PageHeight>11in</PageHeight>" &
    " <MarginTop>0.5in</MarginTop>" &
    " <MarginLeft>0.4in</MarginLeft>" &
    " <MarginRight>0.4in</MarginRight>" &
    " <MarginBottom>0.5in</MarginBottom>" &
    "<SimplePageHeaders>True</SimplePageHeaders>" &
    "</DeviceInfo>"


        Dim informe As New LocalReport()
        Dim origenDatos As New ReportDataSource("dsSexta", sqlDscImprimir)
        Dim parametros As New List(Of ReportParameter)

        informe.ReportPath = "informes/sexta.rdlc"
        informe.DataSources.Add(origenDatos)

        'Creamos pdf
        bytes = informe.Render("PDF", deviceInfo, mimeType, encoding, extension, streamids, avisos)

        'Enviamos al cliente
        Response.ContentType = mimeType

        'Enviamos cabecera con fichero adjunto
        Response.AddHeader("content-disposition", "attachment; filename=ProgramacionSexta" + "." + extension)

        'Enviamos binary
        Response.BinaryWrite(bytes)

        'Cerramos la transmision
        Response.End()

    End Sub
End Class
