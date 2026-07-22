# Local backup: Windows Task Scheduler se roz chalao
# GitHub Actions preferred hai — ye tab use karo jab PC roz on ho

$RepoPath = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
Set-Location $RepoPath

$Date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Add-Content -Path "contributions\log.txt" -Value "$Date - local daily push"

git add contributions/log.txt
git diff --staged --quiet
if ($LASTEXITCODE -ne 0) {
    git commit -m "chore: daily contribution $(Get-Date -Format 'yyyy-MM-dd')"
    git push origin main
    Write-Host "Pushed successfully!"
} else {
    Write-Host "No changes to push."
}
