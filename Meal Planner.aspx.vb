
Partial Class _Default
    Inherits System.Web.UI.Page

    Public str_list As String = ""
    Public str_list2 As String = ""
    Public Shared total_exercise As Integer, total_cal As Integer


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub CheckBoxList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CheckBoxList1.SelectedIndexChanged

        Dim selected_item As ListItem
        total_cal = 0

        Image1.ImageUrl = "~\Images\thats-okay-mate.jpg"

        'Adds items selected in checkbox
        For Each selected_item In CheckBoxList1.Items

            If selected_item.Selected = True Then
                total_cal += selected_item.Value
                str_list &= selected_item.Text & ", "
            End If
        Next

        If total_cal > 1500 Then
            Image1.ImageUrl = "~\Images\nonono meme.jpg"
            TextBox1.Text = total_cal & " calories is too many calories Dave, please put something back."
        End If

        TextBox1.Text = total_cal & " total calories" & vbNewLine &
        "Items included: " & str_list

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        TextBox1.Text = Nothing
        CheckBoxList1.SelectedIndex = -1
    End Sub

    Public Sub CheckBoxList3_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CheckBoxList3.SelectedIndexChanged

        'Adds items selected in checkbox
        total_exercise = 0

        For Each selected_item In CheckBoxList3.Items

            If selected_item.Selected = True Then
                total_exercise += selected_item.Value
            End If
        Next

        TextBox3.Text = "You've earned: " & total_exercise &
            " calories by exercising. Your calorie limit has increased from 3000 to " & (total_exercise + 3000)
    End Sub
    Public Sub CheckBoxList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles CheckBoxList2.SelectedIndexChanged
        Dim selected_item As ListItem
        total_cal = 0
        Image2.ImageUrl = "~\Images\thats-okay-mate.jpg"

        'Adds items selected in checkbox
        For Each selected_item In CheckBoxList2.Items

            If selected_item.Selected = True Then
                total_cal += selected_item.Value
                str_list2 &= selected_item.Text & ", "
            End If
        Next

        Select Case total_cal
            Case > (1500 + total_exercise)
                Image2.ImageUrl = "~\Images\nonono meme.jpg"
                TextBox2.Text = total_cal & " calories is too many calories Dave, please put something back."

            Case (1000 + total_exercise) To (1500 + total_exercise)
                Image2.ImageUrl = "~\Images\thats-okay-mate.jpg"
                TextBox2.Text = total_cal & " calories is just the right amount Dave. Enjoy, but don't grab anything else."
            Case 0 To (1000 + total_exercise)
                Image2.ImageUrl = "~\Images\thats-okay-mate.jpg"
                TextBox2.Text = total_cal & " calories is great Dave, enjoy your meal buddy!"
        End Select

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        TextBox2.Text = Nothing
        total_cal = 0
        CheckBoxList2.SelectedIndex = -1
    End Sub



    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        TextBox3.Text = Nothing
        CheckBoxList3.SelectedIndex = -1
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click

        Dim random As Integer, value As Integer
        value = Int((3 * Rnd()) + 1)

        If value = 1 Then
            random = Int((250 * Rnd()) + 50)
            TextBox4.Text = "Congrats Dave, you rolled the dice and recieved " & random & " more allotted calories for the day! Grab a snack but don't over indulge buddy."
        ElseIf value <> 1 Then
            TextBox4.Text = "Im sorry there is no supprise today Dave. See you tomorrow!"
        End If
    End Sub
End Class
