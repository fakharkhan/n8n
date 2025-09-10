#!/bin/bash

# n8n Feature Branch Creator
# Usage: ./scripts/create-feature-branch.sh <type> <description>
# Example: ./scripts/create-feature-branch.sh feature "add slack integration"

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Check if we're in the n8n repository
if [ ! -f "package.json" ] || [ ! -d "packages" ]; then
    print_error "This script must be run from the n8n repository root"
    exit 1
fi

# Check if we have the required arguments
if [ $# -lt 2 ]; then
    print_error "Usage: $0 <type> <description>"
    echo ""
    echo "Types:"
    echo "  feature  - New features and enhancements"
    echo "  fix      - Bug fixes"
    echo "  docs     - Documentation updates"
    echo "  refactor - Code refactoring"
    echo "  test     - Adding or updating tests"
    echo "  chore    - Maintenance tasks"
    echo ""
    echo "Examples:"
    echo "  $0 feature \"add slack integration\""
    echo "  $0 fix \"issue-1234 parameter validation\""
    echo "  $0 docs \"update contribution guide\""
    exit 1
fi

TYPE=$1
DESCRIPTION=$2

# Validate type
case $TYPE in
    feature|fix|docs|refactor|test|chore)
        ;;
    *)
        print_error "Invalid type: $TYPE"
        echo "Valid types: feature, fix, docs, refactor, test, chore"
        exit 1
        ;;
esac

# Convert description to branch name format
BRANCH_NAME=$(echo "$DESCRIPTION" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/--*/-/g' | sed 's/^-\|-$//g')
FULL_BRANCH_NAME="${TYPE}/${BRANCH_NAME}"

print_status "Creating feature branch: $FULL_BRANCH_NAME"

# Ensure we're on develop branch
CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" != "develop" ]; then
    print_warning "Not on develop branch (currently on: $CURRENT_BRANCH)"
    print_status "Switching to develop branch..."
    git checkout develop
fi

# Pull latest changes from upstream
print_status "Pulling latest changes from upstream..."
git fetch upstream
git merge upstream/master

# Push updated develop to origin
print_status "Pushing updated develop to origin..."
git push origin develop

# Create and switch to new feature branch
print_status "Creating feature branch: $FULL_BRANCH_NAME"
git checkout -b "$FULL_BRANCH_NAME"

print_success "Feature branch created successfully!"
echo ""
echo "Branch: $FULL_BRANCH_NAME"
echo "Description: $DESCRIPTION"
echo ""
echo "Next steps:"
echo "1. Make your changes"
echo "2. Stage changes: git add ."
echo "3. Commit: git commit -m \"$TYPE: $DESCRIPTION\""
echo "4. Push: git push -u origin $FULL_BRANCH_NAME"
echo "5. Create PR on GitHub"
echo ""
print_status "Happy coding! 🚀"
