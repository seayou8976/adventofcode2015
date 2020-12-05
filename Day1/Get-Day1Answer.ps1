Write-Host "+++++++++++++++++++++++++++++++++++++++++++++++++++++++" -ForegroundColor Green
Write-Host "+             Advent of Code 2015; Day 1              +" -ForegroundColor Green
Write-Host "+++++++++++++++++++++++++++++++++++++++++++++++++++++++" -ForegroundColor Green

Set-Location $PSScriptRoot

$input = "day1input.txt"
$floor = 0
$len = (Get-Content $input).ToString().Length

Write-Host "++++++ Part 1 ++++++" -ForegroundColor Yellow

for ($i = 0; $i -lt $len; $i++) {
    $char = (Get-Content $input).SubString($i,1)
    if ($char -eq "(") {
        $floor++
    } else {
        $floor--
    }
}

Write-Host "Final Floor: $floor" -ForegroundColor Green

Write-Host "++++++ Part 2 ++++++" -ForegroundColor Yellow

$floor = 0

for ($i = 0; $i -lt $len; $i++) {
    $char = (Get-Content $input).SubString($i,1)
    if ($char -eq "(") {
        $floor++
    } else {
        $floor--
    }

    ### PART 2 ###
    if ($floor -eq -1) {
        $pos = $i + 1
        Write-Host "Character Position: $pos" -ForegroundColor Green
        Break
    }
}
