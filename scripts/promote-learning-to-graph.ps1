param(
  [Parameter(Mandatory=$true)][string]$LearningId,
  [Parameter(Mandatory=$true)][string]$Summary,
  [string]$Subject = "system:codex-os",
  [double]$Confidence = 0.8,
  [string]$Sensitivity = "personal"
)

$Root = Split-Path -Parent $PSScriptRoot
$Events = Join-Path $Root "memory\graph\events.jsonl"
$IdDate = Get-Date -Format "yyyy-MM-dd-HHmmss"
$CreatedAt = (Get-Date).ToUniversalTime().ToString("o")

$Event = [ordered]@{
  id = "evt-learning-$IdDate"
  type = "decision"
  subject = $Subject
  summary = $Summary
  source = "memory/learnings_log/$LearningId"
  confidence = $Confidence
  sensitivity = $Sensitivity
  created_at = $CreatedAt
  tags = @("learning", "graphify")
}

$Json = $Event | ConvertTo-Json -Compress
Add-Content -Path $Events -Value $Json -ErrorAction Stop
Write-Output "Promoted learning $LearningId to $Events"
