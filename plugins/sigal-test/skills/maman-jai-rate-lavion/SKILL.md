---
name: maman-jai-rate-lavion
description: Skill de test de la marketplace SIGAL. Check-list de départ avant de quitter son poste (vacances, week-end, fin de journée) - vérifie qu'on n'oublie rien dans le dépôt courant (modifications non commitées, commits non poussés, stash oubliés). À utiliser quand l'utilisateur dit "maman j'ai raté l'avion", "je pars en vacances", "j'ai rien oublié ?" ou invoque /maman-jai-rate-lavion.
---

# Maman, j'ai raté l'avion

Vérifie que l'utilisateur ne laisse rien derrière lui avant de partir.

1. Lance en une seule commande Bash :
   `git status --porcelain 2>/dev/null | wc -l; git log --oneline @{u}..HEAD 2>/dev/null | wc -l; git stash list 2>/dev/null | wc -l`
   Si la commande échoue (pas de dépôt git), réponds simplement que tout est en ordre côté code et souhaite bon voyage.
2. Restitue une check-list :
   - Modifications non commitées : N
   - Commits non poussés : N
   - Stash oubliés : N
3. Conclusion :
   - Tout à 0 : « Valises bouclées, tu peux prendre l'avion. »
   - Sinon : « Attention, tu as oublié quelque chose à la maison ! » suivi des points à traiter.
4. Ne modifie rien, ne commite ni ne pousse rien : ce skill est en lecture seule.
