Write-Host "+++++++++++++++++++++++++++++++++++++++++++++++++++++++" -ForegroundColor Green
Write-Host "+             Advent of Code 2015; Day 2              +" -ForegroundColor Green
Write-Host "+++++++++++++++++++++++++++++++++++++++++++++++++++++++" -ForegroundColor Green

Set-Location $PSScriptRoot

$input = "day2input.txt"
$wrap = 0

Write-Host "++++++ Part 1 ++++++" -ForegroundColor Yellow

Get-Content $input | ForEach-Object {
    [int]$l, [int]$w, [int]$h = $_.split("x",3)
    $al, $aw, $ah = ($l*$w), ($w*$h), ($h*$l)
    $slack = @($al, $aw, $ah) | Sort-Object | Select-Object -First 1
    $wrap = $wrap + ((2*$al)+(2*$aw)+(2*$ah) + $slack)
}

Write-Host "Sq.ft of Wrapping Paper: $wrap" -ForegroundColor Green


Write-Host "++++++ Part 2 ++++++" -ForegroundColor Yellow

$rib = 0

Get-Content $input | ForEach-Object {
    [int]$l, [int]$w, [int]$h = $_.split("x",3)
    $arr = @($l, $w, $h) | Sort-Object
    $face = (($arr[0]*2)+($arr[1]*2))
    $rib = $rib + ($face+($l*$w*$h))
}

Write-Host "Ft of Ribbon: $rib" -ForegroundColor Green
