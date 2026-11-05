#!/usr/bin/env bash
# Compte fichiers et lignes par extension pour les fichiers suivis par git.
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || { echo "pas de dépôt git"; exit 0; }
git ls-files -z | xargs -0 -r wc -l 2>/dev/null | grep -v ' total$' | awk '
  { f=$2; n=split(f, p, "."); ext=(n>1 ? p[n] : "(sans)"); files[ext]++; lines[ext]+=$1 }
  END { for (e in files) printf "%s\t%d\t%d\n", e, files[e], lines[e] }' | sort -t$'\t' -k3 -nr
