# marketplace-sigal

Marketplace de plugins et skills Claude Code SIGAL.

## Installation

```
/plugin marketplace add https://github.com/NathanBertaud/marketplace-sigal.git
/plugin install sigal-test@marketplace-sigal
/plugin install sigal-test-outils@marketplace-sigal
```

## Plugins

| Plugin | Skills | Rôle |
|---|---|---|
| `sigal-test` | `test-bonjour`, `test-environnement`, `maman-jai-rate-lavion` | Vérifier que la marketplace est chargée |
| `sigal-test-outils` | `test-compteur-lignes` | Vérifier qu'un skill peut lancer un script embarqué |

## Ajouter un plugin

1. Créer `plugins/<nom>/.claude-plugin/plugin.json` et `plugins/<nom>/skills/<skill>/SKILL.md`.
2. Déclarer le plugin dans `.claude-plugin/marketplace.json`.
3. Valider : `claude plugin validate .`
