Partial Class MasterPage
    Inherits System.Web.UI.MasterPage


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Label_UserLoggedIn.Load
        If (Session("New") IsNot Nothing) Then
            Label_UserLoggedIn.Text = Session("New").ToString & " Logged In"

        End If

    End Sub

End Class
