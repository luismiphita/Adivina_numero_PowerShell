Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

$form = New-Object System.Windows.Forms.Form
$form.Text = 'TRUCO DE MAGIA LUISMI FERNANDO'
#tamaño ventana
$form.Size = New-Object System.Drawing.Size(500,500)
$form.StartPosition = 'CenterScreen'


#boton siguiente
$okButton = New-Object System.Windows.Forms.Button
    #posicion
$okButton.Location = New-Object System.Drawing.Point(110,150)
    #tamanio
$okButton.Size = New-Object System.Drawing.Size(250,30)
$okButton.Text = 'SIGUIENTE'
$okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
$form.AcceptButton = $okButton
$form.Controls.Add($okButton)


#texto
$label = New-Object System.Windows.Forms.Label
    #posicion
$label.Location = New-Object System.Drawing.Point(60,20)
    #tamanio
$label.Size = New-Object System.Drawing.Size(400,30)
$label.Text = 'Dime un numero para hacer magia:'
$form.Controls.Add($label)


#cuadro de teto
$textBox = New-Object Windows.Forms.MaskedTextBox
$textBox.PasswordChar = '*'
    #posicion
$textBox.Location = New-Object System.Drawing.Point(100,100)
    #tamanio
$textBox.Size = New-Object System.Drawing.Size(260,200)
$form.Controls.Add($textBox)

$form.Topmost = $true

$form.Add_Shown({$textBox.Select()})
$result = $form.ShowDialog()

if ($result -eq [System.Windows.Forms.DialogResult]::OK)
{
    $form = New-Object System.Windows.Forms.Form
$form.Text = 'TRUCO DE MAGIA LUISMI-FERNANDO'
#tamaño ventana
$form.Size = New-Object System.Drawing.Size(500,500)
$form.StartPosition = 'CenterScreen'


#boton siguiente
$okButton = New-Object System.Windows.Forms.Button
    #posicion
$okButton.Location = New-Object System.Drawing.Point(110,150)
    #tamanio
$okButton.Size = New-Object System.Drawing.Size(250,30)
$okButton.Text = 'CERRAR'
$okButton.DialogResult = [System.Windows.Forms.DialogResult]::OK
$form.AcceptButton = $okButton
$form.Controls.Add($okButton)


#texto
$label = New-Object System.Windows.Forms.Label
    #posicion
$label.Location = New-Object System.Drawing.Point(160,20)
    #tamanio
$label.Size = New-Object System.Drawing.Size(400,30)
$label.Text = 'Tu número es: '
$form.Controls.Add($label)

#numero secreto
$label2 = New-Object System.Windows.Forms.Label
    #posicion
$label2.Location = New-Object System.Drawing.Point(210,80)
    #tamanio
$label2.Size = New-Object System.Drawing.Size(400,30)
$label2.Text = $textBox.Text
$form.Controls.Add($label2)

$form.Topmost = $true

$form.Add_Shown({$textBox.Select()})
$result = $form.ShowDialog()
}
