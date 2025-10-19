# ==========================================
# show_structure.py (optimierte Version)
# ==========================================
# Zweck: Zeigt alle Dateien und Unterordner rekursiv an
# und speichert eine strukturierte Textübersicht in 'project_structure.txt'

from pathlib import Path

# Projekt-Root automatisch bestimmen (dieses Skript liegt im Root)
root = Path(__file__).parent

# Ignorierte Ordner
ignore_dirs = {"__pycache__", ".ipynb_checkpoints", ".git", "venv", ".DS_Store"}

def list_dir(path: Path, indent: int = 0):
    lines = []
    entries = sorted(p for p in path.iterdir() if not p.name.startswith("."))
    for i, p in enumerate(entries):
        if p.name in ignore_dirs:
            continue
        connector = "└── " if i == len(entries) - 1 else "├── "
        prefix = "│   " * indent + connector
        lines.append(f"{prefix}{p.name}")
        if p.is_dir() and not p.is_symlink():
            lines.extend(list_dir(p, indent + 1))
    return lines

structure = list_dir(root)
output_file = root / "project_structure.txt"

with open(output_file, "w", encoding="utf-8") as f:
    f.write("Projektstruktur:\n\n")
    f.write("\n".join(structure))

print(f"✅ Projektstruktur gespeichert in: {output_file}")

