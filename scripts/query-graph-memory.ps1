param(
  [Parameter(Mandatory=$true)][string]$Query,
  [string]$Path = "memory\graph\events.jsonl"
)

$Root = Split-Path -Parent $PSScriptRoot
$Target = Join-Path $Root $Path

if (-not (Test-Path $Target)) {
  throw "Memory file not found: $Target"
}

Get-Content $Target |
  Where-Object { $_.Trim().Length -gt 0 } |
  ForEach-Object {
    try {
      $_ | ConvertFrom-Json
    } catch {
      Write-Error "Invalid JSONL line: $_"
    }
  } |
  Where-Object {
    ($_.summary -like "*$Query*") -or
    ($_.subject -like "*$Query*") -or
    ($_.source -like "*$Query*") -or
    (($_.tags -join " ") -like "*$Query*")
  } |
  Select-Object id,type,subject,summary,source,confidence,sensitivity,created_at

