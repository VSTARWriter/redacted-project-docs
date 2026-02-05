# Contributing to Asset Management Documentation

This guide explains how to contribute to and maintain the documentation.

## Documentation Architecture

### Directory Structure

```
content/
├── getting-started/     # Onboarding content
├── roles/               # Role-specific guides (one file per role)
├── views/               # View documentation (reusable across roles)
├── features/            # Common feature documentation
├── admin/               # IT/Admin documentation
├── installation/        # Setup guides
├── how-to/              # Task-based procedures
└── reference/           # Changelog, glossary, etc.
```

### Design Principles

1. **Single Source of Truth** — Document each view/feature once
2. **Chunk-Based** — Small, focused files for easy reuse
3. **Role-Based Navigation** — Users find content by their role
4. **Cross-References** — Link between related content

## Content Guidelines

### File Naming

- Use lowercase with hyphens: `find-bits.md`, `ebilling-workbench.md`
- Prefix reusable snippets with underscore: `_common-features-list.md`
- Match file names to concepts: `inventory-manager.md` for Inventory Manager role

### Markdown Conventions

#### Headers

```markdown
# Page Title (H1 - one per page)
## Major Section (H2)
### Subsection (H3)
```

#### Admonitions

```markdown
!!! note "Optional Title"
    Note content here.

!!! tip
    Helpful tip here.

!!! warning
    Warning message here.

!!! info "Role Availability"
    This view is available to: Role1, Role2
```

#### Tables

```markdown
| Column 1 | Column 2 | Column 3 |
|----------|----------|----------|
| Data     | Data     | Data     |
```

#### Links

```markdown
[Link Text](../path/to/file.md)
[Link with anchor](../path/to/file.md#section-id)
```

### Reusable Snippets

Use MkDocs snippets for content that appears in multiple places:

```markdown
--8<-- "content/features/_common-features-list.md"
```

Snippet files should:
- Start with underscore (`_`)
- Contain only the reusable content
- Not include page titles or headers

## Adding New Content

### New View Documentation

1. Create `content/views/new-view.md`
2. Add to `mkdocs.yml` navigation
3. Link from relevant role pages

### New Role Documentation

1. Create `content/roles/new-role.md`
2. Add to role index table
3. Add to `mkdocs.yml` navigation

### New How-To Guide

1. Create `content/how-to/task-name.md`
2. Link from relevant view/role pages
3. Add to navigation if appropriate

## Images and Screenshots

### Placeholder Images

Use SVG placeholders instead of actual screenshots:

```markdown
![Description](../assets/images/placeholder-view-name.svg)
```

### Creating Placeholders

Placeholder SVGs should:
- Indicate the type of content (table, form, dialog)
- Use neutral colors (grays, light blues)
- Include "Placeholder" text label
- Be located in `assets/images/`

### When to Use Real Screenshots

If screenshots are needed:
1. Redact any sensitive data
2. Use consistent dimensions
3. Compress images appropriately
4. Name descriptively: `view-name-action.png`

## Building the Documentation

### Local Preview

```bash
# MkDocs
pip install mkdocs mkdocs-material
mkdocs serve

# Docusaurus
npm install
npm run start
```

### Production Build

```bash
# MkDocs
mkdocs build

# Docusaurus
npm run build
```

## Version Control

### Branching Strategy

- `main` — Production documentation
- `develop` — Work in progress
- `feature/*` — New features
- `fix/*` — Corrections

### Commit Messages

```
docs: add Field Sales role documentation
fix: correct permissions matrix table
update: changelog for v2025.05.001
```

## Review Checklist

Before submitting changes:

- [ ] Links work correctly
- [ ] Tables render properly
- [ ] Admonitions display correctly
- [ ] Cross-references are accurate
- [ ] No spelling/grammar errors
- [ ] File names follow conventions
- [ ] Navigation updated if needed
