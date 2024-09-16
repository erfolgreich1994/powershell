# Load the required .NET Windows Forms assembly
Add-Type -AssemblyName System.Windows.Forms

# Create a new form (window)
$form = New-Object System.Windows.Forms.Form
$form.Text = "My PowerShell Form"
$form.Size = New-Object System.Drawing.Size(600, 400)
$form.StartPosition = "CenterScreen"

# Create a label
$label = New-Object System.Windows.Forms.Label
$label.Location = New-Object System.Drawing.Point(10, 10)
$label.Size = New-Object System.Drawing.Size(280, 20)
$label.Text = "ِo you want to continue.?"
$form.Controls.Add($label)

# Create RadioButton for Yes
$radioButtonYes = New-Object System.Windows.Forms.RadioButton
$radioButtonYes.Location = New-Object System.Drawing.Point(10, 40)
$radioButtonYes.Size = New-Object System.Drawing.Size(100, 20)
$radioButtonYes.Text = "Yes"
$form.Controls.Add($radioButtonYes)

# Create RadioButton for No
$radioButtonNo = New-Object System.Windows.Forms.RadioButton
$radioButtonNo.Location = New-Object System.Drawing.Point(10, 70)
$radioButtonNo.Size = New-Object System.Drawing.Size(100, 20)
$radioButtonNo.Text = "No"
$form.Controls.Add($radioButtonNo)

# Create Start Button
$startButton = New-Object System.Windows.Forms.Button
$startButton.Location = New-Object System.Drawing.Point(10, 110)
$startButton.Size = New-Object System.Drawing.Size(100, 30)
$startButton.Text = "Start"
$form.Controls.Add($startButton)

# Create Cancel Button
$cancelButton = New-Object System.Windows.Forms.Button
$cancelButton.Location = New-Object System.Drawing.Point(120, 110)
$cancelButton.Size = New-Object System.Drawing.Size(100, 30)
$cancelButton.Text = "Cancel"
$form.Controls.Add($cancelButton)

# Event handler for the Start Button
$startButton.Add_Click({
    if ($radioButtonYes.Checked) {
        [System.Windows.Forms.MessageBox]::Show("You selected Yes")
    }
    elseif ($radioButtonNo.Checked) {
        [System.Windows.Forms.MessageBox]::Show("You selected No")
    }
    else {
        [System.Windows.Forms.MessageBox]::Show("Please select an option")
    }
})

# Event handler for the Cancel Button
$cancelButton.Add_Click({
    $form.Close()
})

# Show the form
$form.ShowDialog()
