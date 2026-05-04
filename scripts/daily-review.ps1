param(
  [string]$Date = (Get-Date -Format "yyyy-MM-dd")
)

$Root = Split-Path -Parent $PSScriptRoot
$Target = Join-Path $Root "memory\journals\$Date.md"
$Template = Join-Path $Root "templates\daily\YYYY-MM-DD.md"

if (Test-Path $Target) {
  Write-Output "Daily note already exists: $Target"
  exit 0
}

Copy-Item $Template $Target
(Get-Content $Target) -replace "Date:", "Date: $Date" | Set-Content $Target
Write-Output "Created $Target"

