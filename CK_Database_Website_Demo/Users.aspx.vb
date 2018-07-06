Imports System
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Linq
Imports System.Collections.Generic
Imports System.String


Partial Class Login_Possible_New
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Label_UserLoggedIn.Load
        If (Session("New") IsNot Nothing) Then
            Label_UserLoggedIn.Text = Session("New").ToString & " Logged In"
        Else
            Response.Redirect("login.aspx")


        End If

    End Sub



    Protected Sub B_Logout_Click(sender As Object, e As EventArgs) Handles B_Logout.Click

        Session("New") = Nothing
        Response.Redirect("Login.aspx")

    End Sub


End Class
