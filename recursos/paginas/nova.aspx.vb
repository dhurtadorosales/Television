
Partial Class Default4
    Inherits System.Web.UI.Page

    Private Sub _Default_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Datos del gridview vacíos
        gvProgramacion.EmptyDataText = "No existe programación para este día"

    End Sub

End Class
