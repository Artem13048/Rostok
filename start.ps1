$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot
Write-Host "Rostok: http://localhost:8000"
if (Get-Command py -ErrorAction SilentlyContinue) { py -3 -m http.server 8000 --bind 127.0.0.1 --directory dist }
elseif (Get-Command python -ErrorAction SilentlyContinue) { python -m http.server 8000 --bind 127.0.0.1 --directory dist }
else { throw "Install Python 3 or use Docker: docker compose up --build -d" }
