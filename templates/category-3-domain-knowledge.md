---
# name — kebab-case id; invoke with /name
name: domain-knowledge-skill

# description — loads every session; Claude triggers off this alone. Make clear it carries
#   expertise the model lacks from training (your tokens, your style). WHAT + WHEN. Keep tight.
description: Injects expertise Claude doesn't have from training — your conventions, your tokens, your house style. Trigger when working in this domain so output matches your standards instead of generic defaults.

# allowed-tools — a knowledge skill informs; it doesn't act. Read-only set fits.
allowed-tools: Read, Grep, Glob
---

# Domain Knowledge Skill

> CATEGORY 3 of 4. The shape: reference + conventions. Teaches Claude HOW things are
> done here. Passive — it shapes output, it doesn't block it.

## When to use
<!-- any task in this domain where generic output isn't good enough -->
- Any task in <domain> where generic output isn't good enough

## The conventions
<!-- the rules/tokens/patterns that define "correct here" -->
- Rule / token / pattern 1
- Rule / token / pattern 2

## Reference tables
<!-- lookup tables are why a domain skill earns its keep -->
| Thing | Use | Don't use |
|---|---|---|
| ... | ... | ... |

## Notes
<!-- point to the source of truth so this stays current -->
- Where the source of truth lives

## Constraints
<!-- guardrails: knowledge ≠ enforcement. it informs; it does NOT reject violating work -->
- Inform + apply the conventions; don't gate or reject (that's category 4)
- Out of scope: ...

---

**Real skill reference:**
[`design-system`](file:///Users/timothygailey/.claude/skills/design-system/SKILL.md)
(tokens primitive→semantic→component, scales, component specs) — also [`brand`](file:///Users/timothygailey/.claude/skills/brand/SKILL.md)
*(what I use it for: ____)*
