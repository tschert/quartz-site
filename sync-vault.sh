#!/bin/bash
# Kopiert die öffentlichen Inhalte des Obsidian-Vaults nach content/.
# Aufruf: ./sync-vault.sh
set -euo pipefail

VAULT="/Users/parq/Obsdian Synced/Gernot Tscherteu"
SITE="$(cd "$(dirname "$0")" && pwd)"
CONTENT="$SITE/content"

rsync -a --delete --delete-excluded \
  --exclude '.git/' \
  --exclude '.obsidian/' \
  --exclude '.claude/' \
  --exclude '.trash/' \
  --exclude 'copilot/' \
  --exclude '_copilot/' \
  --exclude '_scripts/' \
  --exclude 'Vorlagen/' \
  --exclude '0_pre_trash/' \
  --exclude 'eliserichter.at/' \
  --exclude '_assets/HTML/' \
  --exclude '_assets/_raw data from old sites/' \
  --exclude '*.php' \
  --exclude '*Kopie.md' \
  --exclude 'README.md' \
  --exclude 'publish.css' \
  --exclude 'google*.html' \
  --exclude '.DS_Store' \
  "$VAULT/" "$CONTENT/"

# Home.md wird zur Startseite
mv "$CONTENT/Home.md" "$CONTENT/index.md"

# Seitentitel = Dateiname (wie Obsidian Publish): title-Zeile im Frontmatter entfernen
find "$CONTENT" -name '*.md' ! -name 'index.md' -print0 | while IFS= read -r -d '' f; do
  awk 'NR==1 && /^---$/ {fm=1; print; next}
       fm && /^---$/ {fm=0}
       !(fm && /^title:/)' "$f" > "$f.tmp" && mv "$f.tmp" "$f"
done

# Übersichtsseiten werden zur Seite des jeweiligen Ordners,
# damit sie im Menü auf- und zuklappbar sind
for f in Projekte Publikationen; do
  mv "$CONTENT/$f.md" "$CONTENT/$f/index.md"
  # Titel wie im Menü (Obsidian Publish zeigte den Dateinamen)
  sed -i '' -E "1,5s/^title: .*/title: $f/" "$CONTENT/$f/index.md"
done

# Quartz hält ".Wirklichkeiten" für eine Dateiendung und lässt sie groß –
# Links darauf daher in Kleinbuchstaben schreiben (nur in der Kopie)
grep -rl --include='*.md' 'Medien\.Kulturen\.Wirklichkeiten' "$CONTENT" | while read -r f; do
  sed -i '' -E \
    -e 's#\[\[(Projekte|Publikationen)/Medien\.Kulturen\.Wirklichkeiten\]\]#[[\1/medien.kulturen.wirklichkeiten|Medien.Kulturen.Wirklichkeiten]]#g' \
    -e 's#\[\[(Projekte|Publikationen)/Medien\.Kulturen\.Wirklichkeiten\|#[[\1/medien.kulturen.wirklichkeiten|#g' \
    "$f"
done

# Google-Verifizierungsdatei: wird nach dem Build ins Wurzelverzeichnis kopiert
mkdir -p "$SITE/extra"
cp "$VAULT"/google*.html "$SITE/extra/"

echo "Sync fertig: $(find "$CONTENT" -name '*.md' | wc -l | tr -d ' ') Notizen"
