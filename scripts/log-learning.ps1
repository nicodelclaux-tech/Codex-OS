param(
  [Parameter(Mandatory=$true)][string]$Failure,
  [Parameter(Mandatory=$true)][string]$Impact,
  [Parameter(Mandatory=$true)][string]$RootCause,
  [Parameter(Mandatory=$true)][string]$FutureRule,
  [string]$Agent = "unknown",
  [string]$Project = "Codex-OS",
  [string]$Status = "open"
)

$Root = Split-Path -Parent $PSScriptRoot
$Date = Get-Date -Format "yyyy-MM-dd"
$Time = Get-Date -Format "HHmmss"
$Target = Join-Path $Root "memory\learnings_log\$Date.md"
$Id = "LRN-$Date-$Time"

if (-not (Test-Path $Target)) {
  "# Learnings Log - $Date`n" | Set-Content $Target
}

$Entry = @"

## $Id

- Agent: $Agent
- Project: $Project
- Failure: $Failure
- Impact: $Impact
- Root Cause: $RootCause
- Future Rule: $FutureRule
- Status: $Status
"@

Add-Content -Path $Target -Value $Entry
Write-Output "Logged learning $Id to $Target"

