# Prompt for repo path
$REPO_PATH = Read-Host "Enter the full path of the repository (or '.' for current folder)"

# Resolve '.' to current directory
if ($REPO_PATH -eq ".") {
    $REPO_PATH = Get-Location
}

if (-not (Test-Path $REPO_PATH)) {
    Write-Host "❌ Path does not exist. Please create it first." -ForegroundColor Red
    exit
}

Set-Location $REPO_PATH
Write-Host "📂 Using project root: $REPO_PATH"

# Prompt user
$DEPT = Read-Host "Enter department suffix (e.g., AD)"
$COURSE_NUM = Read-Host "Enter course number (e.g., 698)"
$COURSE_NAME = Read-Host "Enter course name (e.g., Applied Generative AI for Business)"

$COURSE_CODE = "$DEPT $COURSE_NUM"

# Create site-level folders
$folders = @("data","deliverables","announcement","analytics_template")
foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -ItemType Directory -Force -Name $folder | Out-Null
    }
}

# Create site-level files
@"
---
title: "Home"
---

Welcome to **$COURSE_CODE $COURSE_NAME**!
"@ | Out-File "index.qmd" -Encoding utf8

@"
---
title: "Schedule"
---

Course schedule goes here.
"@ | Out-File "schedule.qmd" -Encoding utf8

@"
---
title: "Deliverables"
---

Assignments, labs, and projects will appear here.
"@ | Out-File "deliverables.qmd" -Encoding utf8

# Generate _quarto.yml
@"
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
"@ | Out-File "_quarto.yml" -Encoding utf8

Write-Host "✅ Quarto project files created in: $REPO_PATH" -ForegroundColor Green
