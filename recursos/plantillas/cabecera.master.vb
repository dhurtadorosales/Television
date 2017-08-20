
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Private Sub imgBtnAntena_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnAntena.Click
        Response.Redirect("~/recursos/paginas/antena.aspx")
    End Sub

    Protected Sub imgBtnSexta_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnSexta.Click
        Response.Redirect("~/recursos/paginas/sexta.aspx")
    End Sub

    Protected Sub imgBtnNeox_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnNeox.Click
        Response.Redirect("~/recursos/paginas/neox.aspx")
    End Sub

    Protected Sub imgBtnMega_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnMega.Click
        Response.Redirect("~/recursos/paginas/mega.aspx")
    End Sub

    Protected Sub imgBtnNova_Click(sender As Object, e As ImageClickEventArgs) Handles imgBtnNova.Click
        Response.Redirect("~/recursos/paginas/nova.aspx")
    End Sub

End Class
