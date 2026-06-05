# Run AISearchProject.exe with a sample input file.
# Usage: .\run.ps1 [path-to-input.txt] [time-limit-factor]

param(
    [string]$InputFile = (Join-Path $PSScriptRoot "..\tests\sample_3x3.txt"),
    [string]$TimeFactor = "1"
)

$ErrorActionPreference = "Stop"
$Exe = Join-Path $PSScriptRoot "..\AISearchProject.exe"
$InputFile = (Resolve-Path $InputFile).Path

if (-not (Test-Path $Exe)) {
    Write-Error "AISearchProject.exe not found at $Exe"
}

$stdin = @"
$InputFile
$TimeFactor
0
"@

$stdin | & $Exe
