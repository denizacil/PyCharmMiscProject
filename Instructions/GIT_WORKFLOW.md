# Git & GitHub Setup Guide

## ✅ What's Already Done

Your project has been completely set up:

- ✅ Git repository initialized locally
- ✅ Git configured with your name and email
- ✅ All files added and committed
- ✅ GitHub repository created
- ✅ Code pushed to GitHub at: https://github.com/denizacil/PyCharmMiscProject

---

## 📚 Common Git Tasks

### Check Git Status
```bash
git status
```

### Make Changes and Commit
```bash
# View what changed
git diff

# Stage changes
git add .

# Commit changes
git commit -m "Your commit message"
```

### Push to GitHub
```bash
# Push commits
git push origin main
```

### Pull Latest Changes
```bash
# Get updates from GitHub
git pull origin main
```

### View Commit History
```bash
# See recent commits
git log --oneline

# See detailed log
git log
```

### Create a New Branch
```bash
# Create and switch to new branch
git checkout -b feature/your-feature-name

# Push new branch to GitHub
git push origin feature/your-feature-name
```

### Undo Changes
```bash
# Undo uncommitted changes
git checkout -- .

# Undo last commit (keep changes)
git reset --soft HEAD~1

# Undo last commit (discard changes)
git reset --hard HEAD~1
```

---

## 🔍 Troubleshooting

### Error: "fatal: not a git repository"
```bash
# Your repo is initialized - this error shouldn't appear
# If it does, you're in the wrong directory
cd C:\Users\deniz\PyCharmMiscProject
git status
```

### Error: "Your branch is ahead of 'origin/main'"
```bash
# You have local commits not yet pushed
git push origin main
```

### Error: "Conflict in merge"
```bash
# Resolve conflicts manually in your editor, then:
git add .
git commit -m "Resolve merge conflicts"
```

---

## 📖 Git Workflow

```
1. Create branch          → git checkout -b feature/name
2. Make changes           → Edit files
3. Test changes           → pytest
4. Stage changes          → git add .
5. Commit changes         → git commit -m "message"
6. Push to GitHub         → git push origin feature/name
7. Create Pull Request    → On GitHub website
8. Merge to main          → On GitHub (or locally)
```

---

## ⚙️ Configuration

### View Current Configuration
```bash
git config --list
```

### Set Your Name & Email
```bash
git config user.name "Your Name"
git config user.email "your.email@example.com"
```

### Set Globally (all projects)
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

---

## 🚀 Next Steps

1. **Start developing** - Make changes to your code
2. **Test locally** - Run `pytest` to test
3. **Commit regularly** - Use `git commit` with meaningful messages
4. **Push to GitHub** - Use `git push` to share changes

---

**Your project is connected to GitHub and ready to go! 🎉**

