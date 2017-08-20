
Partial Class WebUserControl
    Inherits System.Web.UI.UserControl

    'Creación de la propiedad Text de textbox
    Protected valorTextBox As String
    Public Property valor() As Object
        Get
            Return tbCalendario.Value
        End Get

        Set(ByVal value As Object)
            tbCalendario.Value = value
        End Set
    End Property

    'Creación de la propiedad EmptyDataText
    Public WriteOnly Property datosVacios() As Object
        Set(ByVal value As Object)
            gvProgramacion.EmptyDataText = value
        End Set
    End Property

    'Creación del evento SelectionChanged de calendar
    'Private Sub cldFechaControl_SelectionChanged(sender As Object, e As EventArgs) Handles cldFechaControl.SelectionChanged
    '    txtFecha.Text = cldFechaControl.SelectedDate
    'End Sub

    ''Esta propiedad se desarrolla en el fichero sexta.aspx.vb aunque también se podría aquí
    ''Private Sub WebUserControl_Load(sender As Object, e As EventArgs) Handles Me.Load
    ''    If Not IsPostBack Then
    ''        'txtFecha.Text = Date.Today
    ''        txtFecha.Text = "16/3/2016"
    ''    End If
    ''End Sub

End Class
