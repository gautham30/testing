If (Test-Path -Path "D:\temp\Test Folder\gauti.txt")
{
Copy-Item -Path "D:\temp\Test Folder\gauti.txt" -Destination (New-Item -Path "D:\testing\test21\" -ItemType Directory)
Write-Host "files copied"
}
else{
Write-Host "file does not exits"
}