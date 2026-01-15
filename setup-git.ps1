# PowerShell Script to Initialize Git and Push to GitHub
# Run this script in your PyCharmMiscProject directory

param(
    [string]$GitHubUsername = "",
    [string]$RepoName = "PyCharmMiscProject"
)

Write-Host "================================" -ForegroundColor Cyan
Write-Host "GitHub Push Setup Script" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Check if git is installed
Write-Host "Checking git installation..." -ForegroundColor Yellow
try {
    $gitVersion = git --version
    Write-Host "✓ Git found: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Git not found. Please install Git from https://git-scm.com" -ForegroundColor Red
    exit 1
}

# Check if already a git repo
if (Test-Path ".git") {
    Write-Host "✓ Git repository already initialized" -ForegroundColor Green
} else {
    Write-Host "Initializing git repository..." -ForegroundColor Yellow
    git init
    Write-Host "✓ Git repository initialized" -ForegroundColor Green
}

Write-Host ""
Write-Host "Checking git configuration..." -ForegroundColor Yellow
$gitName = git config --global user.name
$gitEmail = git config --global user.email

if ($gitName) {
    Write-Host "✓ User name: $gitName" -ForegroundColor Green
} else {
    Write-Host "Setting git user name..." -ForegroundColor Yellow
    git config --global user.name "Deniz"
    Write-Host "✓ User name set to: Deniz" -ForegroundColor Green
}

if ($gitEmail) {
    Write-Host "✓ User email: $gitEmail" -ForegroundColor Green
} else {
    Write-Host "Setting git user email..." -ForegroundColor Yellow
    git config --global user.email "deniz.acil@duke.edu"
    Write-Host "✓ User email set" -ForegroundColor Green
}

Write-Host ""
Write-Host "Adding files to git..." -ForegroundColor Yellow
git add .
Write-Host "✓ Files added" -ForegroundColor Green

Write-Host ""
Write-Host "Checking for commits..." -ForegroundColor Yellow
$commitCount = git rev-list --count HEAD 2>$null
if ($commitCount -gt 0) {
    Write-Host "✓ Repository already has commits" -ForegroundColor Green
} else {
    Write-Host "Creating initial commit..." -ForegroundColor Yellow
    git commit -m "Initial commit: Professional Python project with normalize utility, comprehensive testing, and CI/CD pipeline"
    Write-Host "✓ Initial commit created" -ForegroundColor Green
}

Write-Host ""
Write-Host "================================" -ForegroundColor Cyan
Write-Host "Next Steps" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "1. Create a repository on GitHub:" -ForegroundColor Cyan
Write-Host "   - Go to https://github.com/new" -ForegroundColor White
Write-Host "   - Name: PyCharmMiscProject" -ForegroundColor White
Write-Host "   - Description: Python project with utilities and CI/CD" -ForegroundColor White
Write-Host "   - Choose Public or Private" -ForegroundColor White
Write-Host "   - Click 'Create repository'" -ForegroundColor White
Write-Host ""

Write-Host "2. Get your GitHub username and run:" -ForegroundColor Cyan
Write-Host ""
Write-Host "   `$username = 'YOUR_GITHUB_USERNAME'" -ForegroundColor Yellow
Write-Host "   git remote add origin https://github.com/`$username/PyCharmMiscProject.git" -ForegroundColor Yellow
Write-Host "   git branch -M main" -ForegroundColor Yellow
Write-Host "   git push -u origin main" -ForegroundColor Yellow
Write-Host ""

Write-Host "Or use this one-liner (replace YOUR_USERNAME):" -ForegroundColor Cyan
Write-Host ""
Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/PyCharmMiscProject.git && git branch -M main && git push -u origin main" -ForegroundColor Yellow
Write-Host ""

Write-Host "3. Current git status:" -ForegroundColor Cyan
git status

Write-Host ""
Write-Host "================================" -ForegroundColor Cyan
Write-Host "Setup Complete! ✓" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Cyan

