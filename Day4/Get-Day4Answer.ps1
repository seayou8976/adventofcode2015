Write-Host "+++++++++++++++++++++++++++++++++++++++++++++++++++++++" -ForegroundColor Green
Write-Host "+             Advent of Code 2015; Day 4              +" -ForegroundColor Green
Write-Host "+++++++++++++++++++++++++++++++++++++++++++++++++++++++" -ForegroundColor Green

Set-Location $PSScriptRoot

# FULL CREDIT TO u/tehjimmeh FOR THE LOGIC IN THIS SCRIPT

$input = "iwrupvqb"
$md5 = New-Object Security.Cryptography.MD5CryptoServiceProvider
$utf8 = New-Object System.Text.UTF8Encoding

Write-Host "++++++ Part 1 ++++++" -ForegroundColor Yellow

:part1 for ($i = 0;; $i++) {
    $hash = $md5.ComputeHash($utf8.GetBytes("$($input)$($i)"))
    if (($hash[0] -eq 0) -and ($hash[1] -eq 0) -and ($hash[2] -le 0xf)) {
        break part1
    }
}

Write-Host "Answer: $i"


Write-Host "++++++ Part 2 ++++++" -ForegroundColor Yellow

:part2 for ($i = 0;; $i++) {
    $hash = $md5.ComputeHash($utf8.GetBytes("$($input)$($i)"))
    if (($hash[0] -eq 0) -and ($hash[1] -eq 0) -and ($hash[2] -eq 0)) {
        break part2
    }
}

Write-Host "Answer: $i"