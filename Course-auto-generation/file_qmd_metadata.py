import os
import sys
import pandas as pd
from datetime import date
import openai   # optional, only if user sets OPENAI_API_KEY
import random


# ----------- AI keyword/description helper -------------
def generate_ai_content(title, subtitle, description, use_openai=True):
    # fallback keywords
    keywords = ["Cloud", "Big Data", "Analytics", "Computing"]
    summary = description if description else "Short description."
    
    if use_openai and "OPENAI_API_KEY" in os.environ:
        try:
            openai.api_key = os.getenv("OPENAI_API_KEY")
            prompt = f"Generate 4 keywords and a 2-line summary for:\nTitle: {title}\nSubtitle: {subtitle}\nDescription: {description}"
            resp = openai.ChatCompletion.create(
                model="gpt-4o-mini",
                messages=[{"role": "user", "content": prompt}],
                max_tokens=150,
                temperature=0.7
            )
            text = resp["choices"][0]["message"]["content"].strip()
            # crude split, refine later
            parts = text.split("\n")
            keywords = parts[0].replace("Keywords:", "").split(",") if parts else keywords
            summary = " ".join(parts[1:]) if len(parts) > 1 else summary
        except Exception as e:
            print(f"⚠️ AI generation failed, using defaults: {e}")
    else:
        # Local fallback: just random keywords from title words
        words = title.split()
        keywords = random.sample(words, min(4, len(words)))
        summary = description[:150] if description else "Short description."
    
    return [kw.strip() for kw in keywords], summary

# ----------- Write QMD YAML -------------
def write_yaml(file_path, row):
    title = row["Title"]
    subtitle = row.get("Subtitle", "")
    desc = row.get("Description", "")
    filetype = row["FileType"]
    module = row["Module"]
    file_date = row.get("Date", str(date.today()))

    # AI keywords + description
    keywords, summary = generate_ai_content(title, subtitle, desc)

    yaml_lines = [
        "---",
        f'title: "{title}"',
        f'subtitle: "{subtitle}"',
        "number-sections: true",
        f'date: "{file_date}"',
        "date-modified: today",
        "date-format: long",
    ]

    # Add extras based on filetype
    if filetype.startswith("LN"):  # Lecture Notes
        yaml_lines.append("engine: jupyter")
        yaml_lines.append('bibliography: ../references.bib')
        yaml_lines.append('csl: ../mis-quarterly.csl')
    elif filetype.startswith("P"):  # Presentation
        yaml_lines.append("logo: \"../analytics_themes/met_signature_toptier_rgb.png\"")
        yaml_lines.append("format:")
        yaml_lines.append("  revealjs:")
        yaml_lines.append("    theme: [../analytics_themes/presentation.scss]")
        yaml_lines.append("    html-math-method: mathml")
        yaml_lines.append("    slide-number: c/t")
        yaml_lines.append("  pptx:")
        yaml_lines.append("    reference-doc: ../analytics_themes/AD688_Presentation.pptx")
    elif filetype in ["Lab01","Lab02","A"]:  # Labs + Assignments
        yaml_lines.append("engine: jupyter")
    elif filetype == "Proj":  # Project
        yaml_lines.append("engine: jupyter")
        keywords.append("Project")

    yaml_lines.append(f"categories: {keywords}")
    yaml_lines.append(f'description: "{summary}"')
    yaml_lines.append("---")

    # Write file
    with open(file_path, "w", encoding="utf-8") as f:
        f.write("\n".join(yaml_lines) + "\n")

    print(f"✅ Filled {file_path}")

# ----------- Main -------------
def main():
    if len(sys.argv) < 2:
        print("Usage: python fill_qmd_metadata.py <excel_or_csv_path> [project_root]")
        sys.exit(1)

    input_file = sys.argv[1]
    project_root = os.path.abspath(sys.argv[2]) if len(sys.argv) > 2 else os.getcwd()

    if not os.path.exists(input_file):
        print(f"❌ Input file not found: {input_file}")
        sys.exit(1)

    df = pd.read_excel(input_file) if input_file.endswith(".xlsx") else pd.read_csv(input_file)

    for _, row in df.iterrows():
        module = row["Module"]
        filetype = row["FileType"]
        fname = f"{module}_{filetype}.qmd"
        fpath = os.path.join(project_root, module, fname)

        if os.path.exists(fpath):
            write_yaml(fpath, row)
        else:
            print(f"⚠️ Skipped (file not found): {fpath}")


if __name__ == "__main__":
    main()
