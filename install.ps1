<#
    ShyzosTheme - installer / updater for Millennium (Windows / PowerShell)

    One-liner (install OR update):
        irm https://raw.githubusercontent.com/Shyzuuu/ShyzosTheme/main/install.ps1 | iex

    Re-run anytime to update to the latest version.
#>

$ErrorActionPreference = 'Stop'

$Owner  = 'Shyzuuu'
$Repo   = 'ShyzosTheme'
$Branch = 'main'

Write-Host "== ShyzosTheme installer ==" -ForegroundColor Cyan

# 1) Locate Steam
$steam = (Get-ItemProperty 'HKCU:\Software\Valve\Steam' -Name SteamPath -ErrorAction SilentlyContinue).SteamPath
if (-not $steam) {
    $steam = (Get-ItemProperty 'HKLM:\SOFTWARE\WOW6432Node\Valve\Steam' -Name InstallPath -ErrorAction SilentlyContinue).InstallPath
}
if (-not $steam) { $steam = "${env:ProgramFiles(x86)}\Steam" }
$steam = $steam -replace '/', '\'

if (-not (Test-Path (Join-Path $steam 'millennium'))) {
    throw "Millennium not found in '$steam'. Install Millennium first: https://steambrew.app"
}

$themes = Join-Path $steam 'millennium\themes'
$dest   = Join-Path $themes $Repo
New-Item -ItemType Directory -Force -Path $themes | Out-Null

$updating = Test-Path $dest
Write-Host ("{0} '{1}'..." -f ($(if ($updating) { 'Updating' } else { 'Installing' }), $dest))

# 2) Resolve the latest commit (stored in metadata.json for version tracking)
$commit = (Invoke-RestMethod "https://api.github.com/repos/$Owner/$Repo/commits/$Branch" `
            -Headers @{ 'User-Agent' = 'ShyzosTheme-installer' }).sha

# 3) Download + extract the theme
$zip = Join-Path $env:TEMP "$Repo.zip"
$ex  = Join-Path $env:TEMP "$Repo-extract"
Invoke-WebRequest "https://github.com/$Owner/$Repo/archive/refs/heads/$Branch.zip" -OutFile $zip
Remove-Item $ex -Recurse -Force -ErrorAction SilentlyContinue
Expand-Archive $zip -DestinationPath $ex -Force

if (Test-Path $dest) { Remove-Item $dest -Recurse -Force }
Move-Item (Join-Path $ex "$Repo-$Branch") $dest

# 4) Write metadata.json (records installed repo + commit)
@{ commit = $commit; owner = $Owner; repo = $Repo } |
    ConvertTo-Json | Set-Content (Join-Path $dest 'metadata.json') -Encoding UTF8

# 5) Cleanup
Remove-Item $zip -Force -ErrorAction SilentlyContinue
Remove-Item $ex -Recurse -Force -ErrorAction SilentlyContinue

Write-Host ""
Write-Host "ShyzosTheme is ready (commit $($commit.Substring(0,7))) in:" -ForegroundColor Green
Write-Host "  $dest" -ForegroundColor Green
Write-Host "-> In Millennium settings, select 'ShyzosTheme', then fully restart Steam." -ForegroundColor Green
