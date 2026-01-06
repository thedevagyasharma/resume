# Resume Version Control Guide

## Quick Reference

### View History
```bash
git log --oneline          # Brief history
git log                    # Detailed history
git diff HEAD~1            # See changes from last version
```

### Make Changes
```bash
# 1. Edit devagya_sharma_resume.tex
# 2. Recompile PDF
pdflatex devagya_sharma_resume.tex

# 3. Stage changes
git add devagya_sharma_resume.tex devagya_sharma_resume.pdf

# 4. Commit with descriptive message
git commit -m "Update: Added new project to experience section"
```

### View Specific Version
```bash
git log --oneline                    # Find commit hash
git show <commit-hash>:devagya_sharma_resume.tex  # View that version
git checkout <commit-hash> devagya_sharma_resume.tex  # Restore old version
```

### Compare Versions
```bash
git diff HEAD~1 devagya_sharma_resume.tex    # Compare with previous
git diff <commit1> <commit2>                  # Compare two specific versions
```

## Common Scenarios

### Scenario 1: Tailoring resume for specific job
```bash
# Create a branch for this application
git checkout -b application-company-name

# Make changes, commit
git add .
git commit -m "Tailored: Emphasized design systems for Company X"

# Return to main version
git checkout main
```

### Scenario 2: Testing major restructure
```bash
# Create experimental branch
git checkout -b experiment-new-layout

# Make changes, if you like them:
git checkout main
git merge experiment-new-layout

# If you don't like them:
git checkout main
git branch -d experiment-new-layout
```

### Scenario 3: Track versions by date
```bash
git tag "v2025-01-06" -m "Version for January 2025 applications"
git tag -l  # List all tagged versions
```

## Best Practices

1. **Commit after each meaningful change** - Don't wait for multiple edits
2. **Write descriptive commit messages** - "Updated bullet points" vs "Emphasized accessibility impact in DealerOn role"
3. **Use branches for experiments** - Keep main branch as your "production" version
4. **Tag stable versions** - Tag versions you've actually sent to employers
5. **Include both .tex and .pdf** - Easy to see compiled changes

## Example Commit Messages

Good:
- "Added: Grid Overlay Pro project to Projects section"
- "Updated: DealerOn bullets to emphasize automation impact"
- "Tailored: Emphasized React experience for Frontend Engineer role at Company X"
- "Removed: Older freelance project, added recent contract work"

Not as helpful:
- "Updated resume"
- "Changes"
- "Fix"
