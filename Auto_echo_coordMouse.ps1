Add-Type -AssemblyName System.Windows.Forms

while ($true) {
    $X = [System.Windows.Forms.Cursor]::Position.X
    $Y = [System.Windows.Forms.Cursor]::Position.Y

    Write-Output "X: $X | Y: $Y"
}