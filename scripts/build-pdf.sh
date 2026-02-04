#!/bin/bash
# Build PDF from Markdown documentation
# Requires: pandoc, wkhtmltopdf or pdflatex

set -e

OUTPUT_DIR="./build"
OUTPUT_FILE="$OUTPUT_DIR/canada-fleetmgr-manual.pdf"

mkdir -p "$OUTPUT_DIR"

echo "Building PDF documentation..."

# Combine all markdown files in order
cat << 'EOF' > "$OUTPUT_DIR/combined.md"
---
title: "Canada FleetMGR User Manual"
subtitle: "Version C_2025.05.001"
date: "June 2025"
toc: true
toc-depth: 3
geometry: margin=1in
---

EOF

# Append content files in logical order
cat content/getting-started/index.md >> "$OUTPUT_DIR/combined.md"
echo -e "\n\\newpage\n" >> "$OUTPUT_DIR/combined.md"

cat content/roles/index.md >> "$OUTPUT_DIR/combined.md"
echo -e "\n\\newpage\n" >> "$OUTPUT_DIR/combined.md"

for role in inventory-manager field-sales billing rep-manager viewer account-rep finance; do
  if [ -f "content/roles/$role.md" ]; then
    cat "content/roles/$role.md" >> "$OUTPUT_DIR/combined.md"
    echo -e "\n\\newpage\n" >> "$OUTPUT_DIR/combined.md"
  fi
done

cat content/views/*.md >> "$OUTPUT_DIR/combined.md" 2>/dev/null || true
cat content/features/*.md >> "$OUTPUT_DIR/combined.md" 2>/dev/null || true
cat content/installation/*.md >> "$OUTPUT_DIR/combined.md" 2>/dev/null || true
cat content/admin/*.md >> "$OUTPUT_DIR/combined.md" 2>/dev/null || true
cat content/reference/*.md >> "$OUTPUT_DIR/combined.md" 2>/dev/null || true

# Generate PDF
pandoc "$OUTPUT_DIR/combined.md" \
  -o "$OUTPUT_FILE" \
  --pdf-engine=xelatex \
  --highlight-style=tango \
  -V colorlinks=true \
  -V linkcolor=blue \
  -V urlcolor=blue

echo "PDF generated: $OUTPUT_FILE"
