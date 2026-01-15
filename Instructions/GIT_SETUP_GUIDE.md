# Git Setup and GitHub Push Guide

## Configuration Completed ✅

Your git has been configured with:
- **Name:** Deniz
- **Email:** deniz.acil@duke.edu
- **CRLF Setting:** autocrlf = true (for Windows compatibility)

## Next Steps to Push to GitHub

### 1. Create Repository on GitHub

Go to https://github.com/new and:
1. Repository name: `PyCharmMiscProject`
2. Description: "A Python project with utilities for vector normalization and mathematical operations"
3. Choose Public or Private
4. Click "Create repository" (don't add README, .gitignore, or license)

### 2. Initialize and Push Your Code

Run these commands in your project directory:

```bash
cd C:\Users\deniz\PyCharmMiscProject

# Initialize git repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Professional Python project with testing and CI/CD"

# Add GitHub as remote (replace YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/PyCharmMiscProject.git

# Create main branch and push
git branch -M main
git push -u origin main
```

### 3. Verify Git Configuration

Check that git is properly configured:

```bash
git config --global user.name
git config --global user.email
git config --global core.autocrlf
```

Expected output:
```
Deniz
deniz.acil@duke.edu
true
```

## Git Configuration Details

### Global Settings Applied
```
user.name = Deniz
user.email = deniz.acil@duke.edu
core.autocrlf = true
```

### What autocrlf = true Does
- Converts CRLF (Windows) to LF (Unix) when committing
- Converts LF back to CRLF when checking out on Windows
- Ensures consistent line endings across platforms

## Common Git Commands for Your Project

```bash
# Check status
git status

# Add changes
git add .                    # Add all files
git add src/                 # Add specific folder

# Commit
git commit -m "Your message"

# Push to GitHub
git push

# Pull from GitHub
git pull

# Create feature branch
git checkout -b feature/my-feature

# Switch branches
git checkout main

# See commit history
git log --oneline
```

## Workflow for Contributing to Your Project

### Setup (one-time)
```bash
git clone https://github.com/YOUR_USERNAME/PyCharmMiscProject.git
cd PyCharmMiscProject
pip install -e ".[dev]"
```

### Development (each feature)
```bash
# Create feature branch
git checkout -b feature/my-feature

# Make changes...
# Run tests
make quality

# Add and commit
git add .
git commit -m "Add my feature"

# Push to GitHub
git push origin feature/my-feature

# Create Pull Request on GitHub
```

### Update main
```bash
git checkout main
git pull origin main
```

## GitHub URL Format

For SSH (requires SSH key setup):
```
git@github.com:YOUR_USERNAME/PyCharmMiscProject.git
```

For HTTPS (easier, uses password):
```
https://github.com/YOUR_USERNAME/PyCharmMiscProject.git
```

## Pushing Your Code Step-by-Step

### Step 1: Create GitHub Repository
- Go to https://github.com/new
- Fill in the details (see section 1 above)
- Click Create (don't initialize)

### Step 2: Initialize Local Repository
```bash
cd C:\Users\deniz\PyCharmMiscProject
git init
```

### Step 3: Add All Files
```bash
git add .
```

### Step 4: Commit
```bash
git commit -m "Initial commit: Professional Python project with testing and CI/CD"
```

### Step 5: Add Remote
```bash
# Replace YOUR_USERNAME with your actual GitHub username
git remote add origin https://github.com/YOUR_USERNAME/PyCharmMiscProject.git
```

### Step 6: Push to GitHub
```bash
git branch -M main
git push -u origin main
```

## After Pushing

1. Go to your repository: https://github.com/YOUR_USERNAME/PyCharmMiscProject
2. You should see:
   - ✅ All your files
   - ✅ README.md displayed
   - ✅ License information
   - ✅ Your source code

3. GitHub Actions will:
   - ✅ Detect `.github/workflows/tests.yml`
   - ✅ Run tests on next push
   - ✅ Show green checkmark when passing

## Troubleshooting

### "fatal: not a git repository"
```bash
git init
```

### "fatal: pathspec 'something' did not match any files"
```bash
git add .    # Add everything instead of specific files
```

### "Permission denied (publickey)"
Use HTTPS instead of SSH:
```bash
git remote remove origin
git remote add origin https://github.com/YOUR_USERNAME/PyCharmMiscProject.git
```

### "everything up-to-date" on push
Make sure you have commits first:
```bash
git status              # Check if there are changes
git add .               # Stage changes
git commit -m "message" # Create commit
git push                # Then push
```

## Getting Help

```bash
git help                 # General help
git help add            # Help for specific command
git status              # Always check status first
```

## Your Git is Ready! 🚀

All configuration is complete. Now follow the "Step-by-Step Push" section above to get your code on GitHub.

Questions? You can always run `git status` to see the current state of your repository.

