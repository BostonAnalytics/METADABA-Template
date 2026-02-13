import os
import sys
import shutil

NUM_MODULES = 8  # M00–M07


def make_qmd(path, title):
    """Write a QMD skeleton file."""
    with open(path, "w", encoding="utf-8") as f:
        f.write(f"---\ntitle: \"{title}\"\n---\n\n# {title}\n")


def main():
    # Resolve path argument or default to current folder
    if len(sys.argv) > 1:
        base_path = sys.argv[1]
    else:
        base_path = "."

    base_path = os.path.abspath(base_path)

    if not os.path.isdir(base_path):
        print(f"❌ Path does not exist: {base_path}")
        sys.exit(1)

    # Force flag
    force_reset = "--force" in sys.argv

    print(f"📂 Using project root: {base_path}")

    for i in range(NUM_MODULES):
        module = f"M{str(i).zfill(2)}"
        module_path = os.path.join(base_path, module)

        if os.path.exists(module_path) and not force_reset:
            print(f"❌ Module folder already exists: {module_path}")
            print("👉 Run with --force to overwrite everything.")
            sys.exit(1)

        if force_reset and os.path.isdir(module_path):
            shutil.rmtree(module_path)

        os.makedirs(module_path, exist_ok=True)

        # QMD files
        qmd_files = {
            "Lab01": f"{module}_Lab01.qmd",
            "Lab02": f"{module}_Lab02.qmd",
            "Assignment": f"{module}_A.qmd",
            "Project": f"{module}_Proj.qmd",
            "Lecture Note 01": f"{module}_LN01.qmd",
            "Lecture Note 02": f"{module}_LN02.qmd",
            "Presentation 01": f"{module}_P01.qmd",
            "Presentation 02": f"{module}_P02.qmd",
            "Highlights": f"{module}_Highlights.qmd",
            "Wrapup": f"{module}_Wrapup.qmd",
        }

        for label, fname in qmd_files.items():
            file_path = os.path.join(module_path, fname)
            make_qmd(file_path, f"{module} {label}")

        # Subfolders
        os.makedirs(os.path.join(module_path, "data"), exist_ok=True)
        os.makedirs(os.path.join(module_path, f"{module}_lecture01_figures"), exist_ok=True)
        os.makedirs(os.path.join(module_path, f"{module}_lecture02_figures"), exist_ok=True)
        os.makedirs(os.path.join(module_path, "output"), exist_ok=True)

    print("✅ All module folders and QMD skeletons generated.")


if __name__ == "__main__":
    main()
