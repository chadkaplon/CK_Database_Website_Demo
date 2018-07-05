Imports System
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Linq
Imports System.Collections.Generic
Imports System.String


Partial Class Registration
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles TextBoxUN.TextChanged
        If (IsPostBack) Then
            Dim Conn As New SqlConnection(ConfigurationManager.ConnectionStrings("RegistrationConnectionString2").ConnectionString)
            Conn.Open()
            Dim checkuser As String = "Select Count(*) from UserData where UserName='" + TextBoxUN.Text + "'"
            Dim com = New SqlCommand(checkuser, Conn)
            Dim Temp = Convert.ToInt32(com.ExecuteScalar().ToString())
            'may need to dim temp as long if function doesn't work
            If (Temp = 1) Then
                Response.Write("User already exists")
            End If

            Conn.Close()
        End If
    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try



            Dim Conn As New SqlConnection(ConfigurationManager.ConnectionStrings("RegistrationConnectionString2").ConnectionString)
            Conn.Open()
            Dim InsertQuery As String = "Insert into UserData (UserName,Email,Password,Country) values (@Uname,@email,@Password,@Country)"
            Dim com = New SqlCommand(InsertQuery, Conn)
            com.Parameters.AddWithValue("@Uname", TextBoxUN.Text)
            com.Parameters.AddWithValue("@Email", TextBoxEmail.Text)
            com.Parameters.AddWithValue("@Password", TextBoxPass.Text)
            com.Parameters.AddWithValue("@Country", DropDownListCN.SelectedItem.ToString())

            com.ExecuteNonQuery()
            Response.Redirect("Users.aspx")
            Response.Write("Your registration is successful")

            Conn.Close()
        Catch ex As Exception
            Response.Write("Error" & ex.ToString())

        End Try






    End Sub


End Class
