# Setup and activate Python virtual environment with requirements

$venvPath = "venv"
$venvPythonExe = "$venvPath\Scripts\python.exe"
$venvActivate = "$venvPath\Scripts\Activate.ps1"

# Create venv if it doesn't exist
if (-not (Test-Path $venvPath)) {
    Write-Host "Creating virtual environment..." -ForegroundColor Cyan
    python -m venv $venvPath
    Write-Host "Virtual environment created." -ForegroundColor Green
} else {
    Write-Host "Virtual environment already exists." -ForegroundColor Yellow
}

# Activate venv
Write-Host "Activating virtual environment..." -ForegroundColor Cyan
& $venvActivate

# Install requirements
Write-Host "Installing requirements..." -ForegroundColor Cyan
pip install -r requirements.txt

Write-Host "Done! Virtual environment is ready." -ForegroundColor Green
