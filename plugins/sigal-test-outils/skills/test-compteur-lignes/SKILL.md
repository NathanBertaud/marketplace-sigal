---
name: test-compteur-lignes
description: Skill de test de la marketplace SIGAL qui exécute un script embarqué. Compte les lignes des fichiers suivis par git dans le dépôt courant, par extension. À utiliser quand l'utilisateur demande "test compteur", "compte les lignes du projet" ou invoque /test-compteur-lignes.
---

# Test compteur de lignes

Vérifie qu'un skill peut appeler un script livré avec son plugin.

1. Exécute : `bash "${CLAUDE_PLUGIN_ROOT}/skills/test-compteur-lignes/scripts/compter.sh"`
2. Présente les 10 premières extensions sous forme de tableau (Extension / Fichiers / Lignes).
3. Si le script répond `pas de dépôt git`, dis-le simplement.
