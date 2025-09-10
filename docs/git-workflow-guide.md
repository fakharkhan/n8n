# n8n Git Workflow Guide

## 🌿 Branch Strategy

### Main Branches
- **`master`** - Production-ready code, always stable
- **`develop`** - Integration branch for features, your main working branch

### Feature Branches
- **`feature/description`** - New features and enhancements
- **`fix/description`** - Bug fixes
- **`docs/description`** - Documentation updates
- **`refactor/description`** - Code refactoring

## 🚀 Daily Workflow

### 1. Start Your Day
```bash
# Ensure you're on develop branch
git checkout develop

# Pull latest changes from upstream
git pull upstream master

# Push updated develop to your fork
git push origin develop
```

### 2. Create a Feature Branch
```bash
# Create and switch to new feature branch
git checkout -b feature/your-feature-name

# Examples:
git checkout -b feature/add-slack-integration
git checkout -b fix/issue-1234
git checkout -b docs/update-api-documentation
```

### 3. Work on Your Feature
```bash
# Make your changes, then stage them
git add .

# Commit with descriptive message
git commit -m "feat: add Slack webhook integration

- Add Slack webhook node
- Support message formatting
- Add error handling
- Include tests"

# Push feature branch to your fork
git push -u origin feature/your-feature-name
```

### 4. Create Pull Request
- Go to your GitHub fork
- Click "Compare & pull request"
- Ensure base is `n8n-io/n8n:master`
- Add detailed description
- Link any related issues

### 5. After PR is Merged
```bash
# Switch back to develop
git checkout develop

# Pull latest changes
git pull upstream master

# Delete local feature branch
git branch -d feature/your-feature-name

# Delete remote feature branch
git push origin --delete feature/your-feature-name
```

## 📝 Commit Message Convention

Follow [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

### Types:
- **feat**: New feature
- **fix**: Bug fix
- **docs**: Documentation changes
- **style**: Code style changes (formatting, etc.)
- **refactor**: Code refactoring
- **test**: Adding or updating tests
- **chore**: Maintenance tasks

### Examples:
```bash
git commit -m "feat(nodes): add Microsoft Teams integration"
git commit -m "fix(webhook): handle malformed JSON payloads"
git commit -m "docs: update contribution guidelines"
git commit -m "test: add unit tests for Slack node"
```

## 🔄 Keeping Your Fork Updated

### Weekly Sync
```bash
# Fetch all changes from upstream
git fetch upstream

# Update your master branch
git checkout master
git merge upstream/master
git push origin master

# Update your develop branch
git checkout develop
git merge upstream/master
git push origin develop
```

### Before Starting New Feature
```bash
# Always start from updated develop
git checkout develop
git pull upstream master
git push origin develop

# Then create your feature branch
git checkout -b feature/new-feature
```

## 🚨 Handling Conflicts

### If You Have Conflicts
```bash
# Pull latest changes
git pull upstream master

# Resolve conflicts in your editor
# Stage resolved files
git add .

# Complete the merge
git commit -m "resolve: merge conflicts with upstream"
```

## 🎯 Feature Branch Templates

### For New Node Integration
```bash
git checkout -b feature/add-service-name-integration
# Work on your changes
git commit -m "feat(nodes): add ServiceName integration

- Add ServiceName node with authentication
- Support common operations (create, read, update, delete)
- Add parameter validation
- Include comprehensive tests
- Add documentation and examples"
```

### For Bug Fixes
```bash
git checkout -b fix/issue-1234-description
# Work on your changes
git commit -m "fix(nodes): resolve issue with parameter validation

- Fix validation logic for required parameters
- Add proper error messages
- Update tests to cover edge cases
- Closes #1234"
```

### For Documentation
```bash
git checkout -b docs/update-contribution-guide
# Work on your changes
git commit -m "docs: improve contribution guide

- Add troubleshooting section
- Update development setup instructions
- Include more examples
- Fix typos and improve clarity"
```

## 🔍 Code Review Process

### Before Submitting PR
```bash
# Run all tests
pnpm test

# Check code style
pnpm lint

# Format code
pnpm format

# Type check
pnpm typecheck

# Build project
pnpm build
```

### PR Checklist
- [ ] All tests pass
- [ ] Code follows n8n style guide
- [ ] No TypeScript errors
- [ ] Documentation updated if needed
- [ ] Small, focused changes
- [ ] Clear commit messages
- [ ] Descriptive PR title and description

## 🛠️ Useful Git Aliases

Add these to your `~/.gitconfig`:

```bash
[alias]
    co = checkout
    br = branch
    ci = commit
    st = status
    unstage = reset HEAD --
    last = log -1 HEAD
    visual = !gitk
    sync = !git fetch upstream && git checkout master && git merge upstream/master && git push origin master
    syncdev = !git fetch upstream && git checkout develop && git merge upstream/master && git push origin develop
```

## 🎯 Best Practices

### Do's ✅
- Always create feature branches from `develop`
- Keep commits small and focused
- Write descriptive commit messages
- Test your changes thoroughly
- Update documentation when needed
- Follow the existing code patterns

### Don'ts ❌
- Don't commit directly to `master` or `develop`
- Don't create large, complex PRs
- Don't ignore failing tests
- Don't skip code reviews
- Don't force push to shared branches
- Don't commit sensitive information

## 🚀 Quick Start Commands

```bash
# Setup (one time)
git remote add upstream https://github.com/n8n-io/n8n.git

# Daily workflow
git checkout develop
git pull upstream master
git checkout -b feature/my-feature
# ... make changes ...
git add .
git commit -m "feat: my feature description"
git push -u origin feature/my-feature
# Create PR on GitHub
```

This workflow ensures you stay organized, keep your contributions focused, and maintain a clean Git history! 🎉
