#!/usr/bin/env python3
import os
import yaml

notes_dir = os.path.expanduser("~/life/notes")
index_path = os.path.join(notes_dir, "index.md")

notes = []

for fname in os.listdir(notes_dir):
    if fname.endswith(".md"):
        with open(os.path.join(notes_dir, fname)) as f:
            content = f.read()
        if content.startswith("---"):
            frontmatter = content.split("---")[1]
            meta = yaml.safe_load(frontmatter)
            notes.append({
                "title": meta.get("title", fname),
                "date": meta.get("created", "unknown"),
                "file": fname
            })

notes.sort(key=lambda x: x["date"], reverse=True)

with open(index_path, "w") as f:
    f.write("# Índice de notas\n\n")
    for note in notes:
        f.write(f"- {note['date']} — [{note['title']}]({note['file']})\n")

print("✅ Índice actualizado:", index_path)

