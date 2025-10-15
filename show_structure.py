# ==========================================
# show_structure.py
# ==========================================
# Zweck: Zeigt alle Dateien und Unterordner rekursiv an
# und speichert eine strukturierte Textübersicht in 'project_structure.txt'

from pathlib import Path

# Projekt-Root automatisch bestimmen (dieses Skript liegt im Root)
root = Path(__file__).parent

# Ignorierte Ordner (z. B. Cache, venv, __pycache__)
ignore_dirs = {"__pycache__", ".ipynb_checkpoints", ".git", "venv", ".DS_Store"}

def list_dir(path, indent=0):
    lines = []
    for p in sorted(path.iterdir()):
        if p.name in ignore_dirs:
            continue
        prefix = "│   " * indent + ("├── " if p.is_file() else "└── ")
        lines.append(f"{prefix}{p.name}")
        if p.is_dir():
            lines.extend(list_dir(p, indent + 1))
    return lines

# Alle Dateien auflisten
structure = list_dir(root)

# Ausgabe speichern
output_file = root / "project_structure.txt"
with open(output_file, "w", encoding="utf-8") as f:
    f.write("\n".join(structure))

print(f"✅ Projektstruktur gespeichert in: {output_file}")
