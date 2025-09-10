# n8n Contribution Guide

## 🎉 Congratulations! Your Development Environment is Ready

Your n8n development environment has been successfully set up with:
- ✅ Node.js v22.19.0 (meets requirement: v22.16+)
- ✅ pnpm v10.12.1 (meets requirement: v10.2+)
- ✅ All dependencies installed
- ✅ Project built successfully
- ✅ n8n can start and run

## 🚀 Getting Started as a Contributor

### 1. Understanding the n8n Architecture

n8n is a monorepo with several key packages:

- **`packages/cli`** - Main CLI application
- **`packages/core`** - Core workflow execution engine
- **`packages/frontend/editor-ui`** - Vue.js frontend editor
- **`packages/frontend/@n8n/design-system`** - UI component library
- **`packages/nodes-base`** - Base nodes and integrations
- **`packages/workflow`** - Workflow interfaces and types

### 2. Development Workflow

#### Start Development Mode
```bash
# Full development mode (all packages)
pnpm dev

# Backend only
pnpm dev:be

# Frontend only
pnpm dev:fe

# AI/LangChain nodes only
pnpm dev:ai
```

#### Hot Reload for Custom Nodes
```bash
N8N_DEV_RELOAD=true pnpm dev
```

### 3. Contribution Areas

#### 🎯 Beginner-Friendly Areas
1. **Documentation improvements**
   - Fix typos and improve clarity
   - Add examples and tutorials
   - Update API documentation

2. **Bug fixes in existing nodes**
   - Small fixes in `packages/nodes-base`
   - Parameter validation improvements
   - Error handling enhancements

3. **UI/UX improvements**
   - Frontend component enhancements
   - Better error messages
   - Accessibility improvements

#### 🔧 Intermediate Areas
1. **New node integrations**
   - Add new API integrations
   - Create custom nodes for popular services
   - Enhance existing node functionality

2. **Frontend features**
   - New UI components
   - Workflow editor improvements
   - Better user experience features

3. **Testing and quality**
   - Add unit tests
   - Improve test coverage
   - E2E test enhancements

#### 🚀 Advanced Areas
1. **Core engine improvements**
   - Workflow execution optimizations
   - Performance enhancements
   - Architecture improvements

2. **Enterprise features**
   - Security enhancements
   - Advanced authentication
   - Enterprise integrations

### 4. Finding Issues to Work On

#### Good First Issues
- Look for issues labeled `good first issue`
- Check the [GitHub Issues](https://github.com/n8n-io/n8n/issues) page
- Filter by labels: `bug`, `enhancement`, `documentation`

#### Community Requests
- Browse the [n8n Community Forum](https://community.n8n.io)
- Look for feature requests with community support
- Check for integration requests

### 5. Development Best Practices

#### Code Quality
- Follow TypeScript best practices
- Use proper error handling
- Write comprehensive tests
- Follow n8n's coding standards

#### Testing
```bash
# Run all tests
pnpm test

# Run tests for specific package
cd packages/nodes-base && pnpm test

# Run E2E tests
pnpm test:e2e:dev
```

#### Code Style
```bash
# Format code
pnpm format

# Lint code
pnpm lint

# Fix linting issues
pnpm lint:fix
```

### 6. Pull Request Guidelines

#### Before Submitting
- [ ] Code follows n8n's style guide
- [ ] All tests pass
- [ ] No TypeScript errors
- [ ] Documentation updated if needed
- [ ] Small, focused changes

#### PR Requirements
- **Must include tests** (unit tests, workflow tests, UI tests)
- **Small PRs only** - one feature/fix per PR
- **Follow naming conventions** - see [PR Title Conventions](https://github.com/n8n-io/n8n/blob/master/.github/pull_request_title_conventions.md)
- **No new nodes** unless explicitly requested by n8n team
- **No typo-only PRs**

### 7. Learning Resources

#### Documentation
- [n8n Documentation](https://docs.n8n.io)
- [Creating Custom Nodes](https://docs.n8n.io/integrations/creating-nodes/)
- [API Documentation](https://docs.n8n.io/api/)

#### Community
- [n8n Community Forum](https://community.n8n.io)
- [Discord Server](https://discord.gg/n8n)
- [GitHub Discussions](https://github.com/n8n-io/n8n/discussions)

#### Code Examples
- Study existing nodes in `packages/nodes-base`
- Look at recent PRs for patterns
- Check the test files for usage examples

### 8. Getting Help

#### Before Asking
1. Search existing issues and discussions
2. Check the documentation
3. Look at similar implementations
4. Run tests to understand expected behavior

#### When Asking
1. Provide clear problem description
2. Include relevant code snippets
3. Share error messages
4. Mention what you've already tried

### 9. Next Steps

#### Immediate Actions
1. **Explore the codebase** - Start with `packages/nodes-base` to understand node structure
2. **Run the development server** - `pnpm dev` and explore the UI
3. **Find your first issue** - Look for `good first issue` labels
4. **Join the community** - Participate in discussions and forums

#### Week 1 Goals
- [ ] Understand basic node structure
- [ ] Make your first small contribution (documentation or bug fix)
- [ ] Get familiar with the testing framework
- [ ] Join community discussions

#### Month 1 Goals
- [ ] Contribute 2-3 small fixes or improvements
- [ ] Understand the workflow execution engine
- [ ] Build a simple custom node
- [ ] Participate in code reviews

### 10. Useful Commands Reference

```bash
# Development
pnpm dev                    # Start full development mode
pnpm dev:be                # Backend only
pnpm dev:fe                # Frontend only
pnpm start                 # Start production build

# Building
pnpm build                 # Build all packages
pnpm build:n8n            # Build main n8n package

# Testing
pnpm test                  # Run all tests
pnpm test:affected         # Run tests for changed files
pnpm test:e2e:dev         # Run E2E tests in dev mode

# Code Quality
pnpm lint                  # Lint all code
pnpm format                # Format all code
pnpm typecheck            # Type check all packages

# Utilities
pnpm clean                 # Clean build artifacts
pnpm reset                 # Reset development environment
```

## 🎯 Your Contribution Journey Starts Now!

Remember:
- Start small and build confidence
- Ask questions in the community
- Follow the established patterns
- Focus on quality over quantity
- Have fun contributing to open source!

Good luck with your n8n contributions! 🚀
