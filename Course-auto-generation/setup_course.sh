#!/bin/bash

# Prompt for repo path
read -p "Enter the full path of the repository (or '.' for current folder): " REPO_PATH

# Resolve '.' to absolute path
if [ "$REPO_PATH" = "." ]; then
  REPO_PATH="$(pwd)"
fi

# Check path exists
if [ ! -d "$REPO_PATH" ]; then
  echo "❌ Path does not exist. Please create it first."
  exit 1
fi

cd "$REPO_PATH" || exit
echo "📂 Using project root: $REPO_PATH"

# Prompt user
read -p "Enter department suffix (e.g., AD): " DEPT
read -p "Enter course number (e.g., 698): " COURSE_NUM
read -p "Enter course name (e.g., Applied Generative AI for Business): " COURSE_NAME

COURSE_CODE="$DEPT $COURSE_NUM"

# Create site-level folders
for folder in data deliverables announcement analytics_template; do
  mkdir -p "$folder"
done

# Create site-level files
cat > index.qmd <<EOL
---
title: "Home"
---

Welcome to **$COURSE_CODE $COURSE_NAME**!
EOL

cat > schedule.qmd <<EOL
---
title: "Schedule"
---

Course schedule goes here.
EOL

cat > deliverables.qmd <<EOL
---
title: "Deliverables"
---

Assignments, labs, and projects will appear here.
EOL

# Generate _quarto.yml
cat > _quarto.yml <<EOL
project:
  type: website
  preview:
    port: 4300
    browser: false
  render:
    - "*.qmd"
    - "!deliverables-solutions/"

editor:  
  render-on-save: true
  preview: true

execute:
  freeze: false
  keep-ipynb: false
  fig-align: center

website:
  title: "$COURSE_CODE $COURSE_NAME"
  navbar: false
  # --- Uncomment below if navigation is needed ---
  # search: true
  # left:
  #   - text: Syllabus
  #     href: index.qmd
  #   - text: Schedule
  #     href: schedule.qmd
  #   - text: Deliverables
  #     href: deliverables.qmd
  #   - text: "Module 01"
  #     menu:
  #       - text: "Lecture Notes 01.1"
  #         href: M01/M01_LN01.qmd
  #       - text: "Presentation 01.1"
  #         href: M01/M01_P01.qmd

format:
  html:
    theme: [cosmo, ./analytics_themes/web-analytics.scss]
    toc: true
    number-sections: true
    embed-resources: true
    highlight-style: github
    code-overflow: wrap
    html-math-method: mathml

crossref:
  fig-title: '**Figure**'
  fig-labels: arabic
  title-delim: "**.**"
EOL

echo "✅ Quarto project files created in: $REPO_PATH"
