try {
    $tools = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
    $exe = Get-ChildItem "$tools\.." -Include "*.exe" -Recurse
    $env:Path += ";C:\Program Files (x86)\Git\cmd\"
    Install-ChocolateyInstallPackage 'git-credential-winstore' 'exe' '-s' $exe.fullname 
    Write-ChocolateySuccess 'git-credential-winstore'
} catch {
  Write-ChocolateyFailure 'git-credential-winstore' $($_.Exception.Message)
  throw
}