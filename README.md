# Asset Management Documentation

> **Version:** C_2025.05.001  
> **Last Updated:** June 9, 2025

A modern, modular documentation system for the Asset Management application.

[![Deploy Documentation](https://github.com/your-username/redacted-project-docs/actions/workflows/deploy.yml/badge.svg)](https://github.com/your-username/redacted-project-docs/actions/workflows/deploy.yml)

## 🚀 Quick Start

### View the Documentation

Once deployed, documentation is available at:
**https://your-username.github.io/redacted-project-docs/**

### Local Development

```bash
# Clone the repository
git clone https://github.com/your-username/redacted-project-docs.git
cd redacted-project-docs

# Create virtual environment (recommended)
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Start local server
mkdocs serve
```

Open http://localhost:8000 to preview.

## 📁 Documentation Structure

```
redacted-project-docs/
├── .github/workflows/      # GitHub Actions for auto-deploy
├── content/                # All documentation content
│   ├── getting-started/    # Onboarding & overview
│   ├── roles/              # Role-specific guides
│   ├── views/              # View documentation (reusable)
│   ├── features/           # Common feature docs
│   ├── admin/              # IT/Admin documentation
│   └── installation/       # Setup guides
├── assets/images/          # Image placeholders
├── docs/                   # MkDocs entry point
├── mkdocs.yml              # MkDocs configuration
└── requirements.txt        # Python dependencies
```

## 🔧 GitHub Setup Instructions

### Step 1: Create a New Repository

1. Go to [github.com/new](https://github.com/new)
2. Name it `redacted-project-docs` (or your preferred name)
3. Set visibility (Public for free GitHub Pages, or Private with GitHub Pro/Team)
4. **Don't** initialize with README (we have one)
5. Click **Create repository**

### Step 2: Push This Code

```bash
# Navigate to the docs folder
cd redacted-project-docs

# Initialize git
git init

# Add all files
git add .

# Commit
git commit -m "Initial documentation setup"

# Add your remote (replace YOUR-USERNAME)
git remote add origin https://github.com/YOUR-USERNAME/redacted-project-docs.git

# Push
git branch -M main
git push -u origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** → **Pages** (left sidebar)
3. Under "Build and deployment":
   - **Source:** Select "GitHub Actions"
4. The workflow will automatically run on push

### Step 4: Update Configuration

Edit `mkdocs.yml` and replace `your-username` with your actual GitHub username:

```yaml
site_url: https://YOUR-USERNAME.github.io/redacted-project-docs/
repo_url: https://github.com/YOUR-USERNAME/redacted-project-docs
```

### Step 5: Verify Deployment

1. Go to **Actions** tab in your repository
2. Watch the "Deploy Documentation" workflow run
3. Once complete (green checkmark), visit your docs URL

## 📝 Making Changes

### Simple Edits

1. Edit any `.md` file directly on GitHub
2. Commit changes to `main` branch
3. Workflow automatically rebuilds and deploys

### Larger Updates

1. Create a branch: `git checkout -b feature/my-update`
2. Make changes locally
3. Test with `mkdocs serve`
4. Push and create a Pull Request
5. PR triggers a build check (without deploying)
6. Merge to `main` to deploy

## 🎨 Customization

### Change Theme Colors

Edit `mkdocs.yml`:

```yaml
theme:
  palette:
    primary: indigo    # Change to: red, pink, purple, deep purple, indigo, blue, etc.
    accent: amber      # Accent color for links and buttons
```

### Add New Pages

1. Create `.md` file in appropriate `content/` subfolder
2. Add to `nav:` section in `mkdocs.yml`
3. Commit and push

### Add Real Screenshots

1. Replace SVG placeholders in `assets/images/`
2. Reference in Markdown: `![Alt text](../assets/images/your-image.png)`

## 🔗 Quick Links

| Link | Description |
|------|-------------|
| [Getting Started](content/getting-started/index.md) | New user onboarding |
| [User Roles](content/roles/index.md) | Role-specific guides |
| [Views Reference](content/views/index.md) | All application views |
| [Contributing](CONTRIBUTING.md) | How to contribute |

## 📄 License

Internal documentation. All rights reserved.

---

**Need help?** Contact the HelpDesk or open an issue in this repository.
