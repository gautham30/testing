

[string[]]$gautham = 'powershell','learning','docker'
function github([string[]]$gautham){
foreach($repo in $gautham)
{
Write-Output $repo
}
}




