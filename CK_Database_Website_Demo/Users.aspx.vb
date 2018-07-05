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




    Protected Sub B_Logout_Click(sender As Object, e As EventArgs) Handles B_Logout.Click
        Session("New") = Nothing
        Response.Redirect("Login.aspx")

    End Sub


End Class
