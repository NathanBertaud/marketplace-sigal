---
name: test-bonjour
description: Skill de test de la marketplace SIGAL. Répond par un message de bienvenue normé pour confirmer que les skills de la marketplace sont bien chargés. À utiliser quand l'utilisateur dit "test marketplace", "test bonjour", "est-ce que la marketplace sigal marche" ou invoque /test-bonjour.
---

# Test bonjour

Réponds exactement, en un seul bloc :

```text
Marketplace SIGAL opérationnelle - skill test-bonjour chargé.
Date : <date du jour au format JJ/MM/AAAA>
```

Si l'utilisateur a passé un argument (ex. un prénom), ajoute une troisième ligne `Bonjour <argument> !`.
