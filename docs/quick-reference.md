# n8n Development Quick Reference

## 🚀 Daily Commands

### Start Your Day
```bash
# Switch to develop and sync with upstream
git checkout develop
git pull upstream master
git push origin develop
```

### Create Feature Branch
```bash
# Use the automated script (recommended)
./scripts/create-feature-branch.sh feature "your feature description"

# Or manually
git checkout -b feature/your-feature-name
```

### Work on Feature
```bash
# Make changes, then commit
git add .
git commit -m "feat: your feature description"
git push -u origin feature/your-feature-name
```

### After PR is Merged
```bash
# Clean up
git checkout develop
git pull upstream master
git branch -d feature/your-feature-name
git push origin --delete feature/your-feature-name
```

## 🔧 Development Commands

```bash
# Start development
pnpm dev                    # Full development mode
pnpm dev:be                # Backend only
pnpm dev:fe                # Frontend only

# Testing
pnpm test                  # Run all tests
pnpm test:affected         # Run tests for changed files

# Code Quality
pnpm lint                  # Check code style
pnpm format                # Format code
pnpm typecheck            # Type check
pnpm build                # Build project
```

## 📝 Commit Message Types

- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation
- `style:` - Code style
- `refactor:` - Code refactoring
- `test:` - Tests
- `chore:` - Maintenance

## 🎯 Branch Naming

- `feature/description` - New features
- `fix/description` - Bug fixes
- `docs/description` - Documentation
- `refactor/description` - Refactoring

## 📋 PR Checklist

- [ ] All tests pass
- [ ] Code follows style guide
- [ ] No TypeScript errors
- [ ] Documentation updated
- [ ] Small, focused changes
- [ ] Clear commit messages

## 🆘 Quick Fixes

### Node.js Version Issues
```bash
nvm use 22
node --version  # Should show v22.19.0
```

### Reset Development Environment
```bash
pnpm clean
pnpm install
pnpm build
```

### Sync with Upstream
```bash
git fetch upstream
git checkout master
git merge upstream/master
git push origin master
```

## 📚 Key Files

- `docs/contribution-guide.md` - Complete contribution guide
- `docs/git-workflow-guide.md` - Detailed Git workflow
- `scripts/create-feature-branch.sh` - Feature branch creator
- `CONTRIBUTING.md` - Official n8n contribution guidelines

## 🌐 Useful Links

- [n8n Community Forum](https://community.n8n.io)
- [GitHub Issues](https://github.com/n8n-io/n8n/issues)
- [Documentation](https://docs.n8n.io)
- [Your Fork](https://github.com/fakharkhan/n8n)

---

**Remember**: Start small, ask questions, and have fun contributing! 🚀
