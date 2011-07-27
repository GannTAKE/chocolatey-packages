try { 
  $nodePath = Join-Path $(Split-Path -parent $MyInvocation.MyCommand.Definition) 'node.exe'
  Get-ChocolateyWebFile 'nodejs' "$nodePath" 'http://nodejs.org/dist/v0.5.2/node.exe'
  
  Write-ChocolateySuccess 'nodejs'
} catch {
  Write-ChocolateyFailure 'nodejs' "$($_.Exception.Message)"
  throw 
}