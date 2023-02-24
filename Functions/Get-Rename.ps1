function Get-Rename
{
    Param(
        
        [Parameter(Mandatory=$true)][string]$GithubProject,
        [Parameter(Mandatory=$true)][string]$GithubRepo,
        [Parameter(Mandatory=$true)][string]$BranchName,
        [Parameter(Mandatory=$true)][string]$RenamedBranch
                
    )

    $Server  = "https://api.github.com/repos/gautham30/learning/git/refs"

    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

    $Auth64Encoded = Get-Base64Auth 

    #$Rest_Url = "{0}/{1}/{2}/branches/{3}/protection" -f $Server,$GithubProject,$GithubRepo,$BranchName
    #$Rest_Url = "https://api.github.com/repos/$GithubProject/$GithubRepo/branches/$BranchName/rename"
    $Rest_Url = "https://api.github.com/repos/$GithubProject/$GithubRepo/branches/$BranchName/rename -f new_name='$RenamedBranch' "
    $Request = Invoke-RestMethod -Uri $Rest_Url -Method Get -Headers @{'Authorization'= "Bearer $Auth64Encoded"} -DisableKeepAlive
    $Request
    
}