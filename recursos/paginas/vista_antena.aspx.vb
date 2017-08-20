Imports Microsoft.Reporting.WebForms

Partial Class recursos_paginas_vista_antena
    Inherits System.Web.UI.Page

    'Al cargar la página
    Private Sub recursos_paginas_vista_antena_Load(sender As Object, e As EventArgs) Handles Me.Load
        rvAntena.LocalReport.Refresh()
    End Sub

    'Al iniciar el report viewer
    'Private Sub rvAntena_Init(sender As Object, e As EventArgs) Handles rvAntena.Init
    '    odsAntena.SelectParameters("fecha").DefaultValue = Request.QueryString("a")
    '    odsAntena.DataBind()
    'End Sub
End Class
