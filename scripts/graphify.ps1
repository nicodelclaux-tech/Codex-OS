param(
  [Parameter(Mandatory=$true)][string]$Type,
  [Parameter(Mandatory=$true)][string]$Subject,
  [Parameter(Mandatory=$true)][string]$Summary,
  [string]$Source = "manual",
  [double]$Confidence = 0.7,
  [string]$Sensitivity = "personal"
)

$Root = Split-Path -Parent $PSScriptRoot
$Events = Join-Path $Root "memory\graph\events.jsonl"
$IdDate = Get-Date -Format "yyyy-MM-dd-HHmmss"
$CreatedAt = (Get-Date).ToUniversalTime().ToString("o")

$Event = [ordered]@{
  id = "evt-$IdDate"
  type = $Type
  subject = $Subject
  summary = $Summary
  source = $Source
  confidence = $Confidence
  sensitivity = $Sensitivity
  created_at = $CreatedAt
  tags = @("manual")
}

($Event | ConvertTo-Json -Compress) | Add-Content $Events
Write-Output "Appended memory event to $Events"

