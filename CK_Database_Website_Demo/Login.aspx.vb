Imports System.Data.SqlClient
Imports System.Configuration
Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Linq
Imports System.Collections.Generic
Imports System.String

Partial Class Default2

    Inherits System.Web.UI.Page




    Protected Sub Button_Login_Click(sender As Object, e As EventArgs) Handles Button_Login.Click
        Dim Conn As New SqlConnection(ConfigurationManager.ConnectionStrings("RegistrationConnectionString2").ConnectionString)
        Conn.Open()
        Dim checkuser As String = "Select Count(*) from UserData where UserName='" + TextBoxUserName.Text + "'"
        Dim com = New SqlCommand(checkuser, Conn)
        Dim Temp = Convert.ToInt32(com.ExecuteScalar().ToString())
        'may need to dim temp as long if function doesn't work
        If (Temp = 1) Then


            Dim checkpasswordquery As String = "select password from UserData where UserName='" + TextBoxUserName.Text + "'"
            Dim passconn = New SqlCommand(checkpasswordquery, Conn)
            Dim password = passconn.ExecuteScalar().ToString().Replace(" ", "")
            If (password = TextBoxPassword.Text) Then
                Session("New2") = TextBoxUserName.Text
                Response.Write("Password is correct")
                Response.Redirect("Users.aspx")
            Else
                Response.Write("Password is incorrect!")

            End If
        Else
            Response.Write("Username is not correct")
        End If

        Conn.Close()
    End Sub
End Class
