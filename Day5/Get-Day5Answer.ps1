Write-Host "+++++++++++++++++++++++++++++++++++++++++++++++++++++++" -ForegroundColor Green
Write-Host "+             Advent of Code 2015; Day 5              +" -ForegroundColor Green
Write-Host "+++++++++++++++++++++++++++++++++++++++++++++++++++++++" -ForegroundColor Green

# CREDIT TO u/tehjimmeh AND u/pdc FOR THE LOGIC IN THIS SCRIPT

Set-Location $PSScriptRoot

$input = "day5input.txt"
$nice = 0
$naughty = 0

Write-Host "++++++ Part 1 ++++++" -ForegroundColor Yellow

Get-Content $input | ForEach-Object {
    if (($_  -match '(.*[aeiou]){3}') -and ($_ -match '(.)\1') -and ($_ -notmatch '(ab|cd|pq|xy)')) {
        $nice++
    } else {
        $naughty++
    }
}

Write-Host "Nice: $nice" -ForegroundColor Green
Write-Host "Naughty" $naughty -ForegroundColor Red

Write-Host "++++++ Part 2 ++++++" -ForegroundColor Yellow

$nice = 0
$naughty = 0

Get-Content $input | ForEach-Object {
    if (($_  -match '(..).*\1') -and ($_ -match '(.).\1')) {
        $nice++
    } else {
        $naughty++
    }
}

Write-Host "Nice: $nice" -ForegroundColor Green
Write-Host "Naughty" $naughty -ForegroundColor Red