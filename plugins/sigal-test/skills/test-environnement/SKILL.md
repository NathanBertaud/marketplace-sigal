---
name: test-environnement
description: Skill de test de la marketplace SIGAL. Dresse un court état de l'environnement de travail (répertoire courant, dépôt git, branche, outils java/mvn/node/docker disponibles). À utiliser quand l'utilisateur demande "test environnement", "vérifie mon environnement" ou invoque /test-environnement.
---

# Test environnement

1. Lance en une seule commande Bash :
   `pwd; git rev-parse --abbrev-ref HEAD 2>/dev/null || echo "pas de dépôt git"; for t in java mvn node docker; do command -v $t >/dev/null && echo "$t: ok" || echo "$t: absent"; done`
2. Restitue le résultat sous forme de tableau markdown à deux colonnes (Élément / Valeur).
3. Ne modifie rien : ce skill est en lecture seule.
