---
# name — kebab-case id; invoke with /name
name: simple-skill

# description — loads every session; Claude triggers off this alone. WHAT + WHEN +
#   the trigger phrases. Specific beats broad: vague under-triggers, broad over-triggers.
description: What this does and when to trigger it. Name the situations + phrases that should activate it ("when I say X", "for Y tasks"). Keep it specific — vague descriptions under-trigger, broad ones over-trigger.
---

# Simple Skill

## When to use
<!-- the trigger conditions in plain words — mirrors the description's "when" -->
- Trigger condition 1 (a phrase or situation)
- Trigger condition 2

## What to do
<!-- the procedure once triggered. numbered = order matters -->
1. First step
2. Second step
3. Third step

## Notes / gotchas
<!-- the non-obvious stuff Claude would otherwise get wrong -->
- Anything Claude tends to get wrong here
- Defaults to assume

## Constraints
<!-- guardrails: what this skill should NOT do. stops it over-reaching -->
- Don't: ...
- Out of scope: ...

<!--
THE WORKHORSE. ~80% of useful skills look like this:
frontmatter + when-to-use + a short procedure + gotchas + constraints. No folders.
-->

---

**Real skill reference:** a clean, simple one I use →
[`linear`](file:///Users/timothygailey/.claude/skills/linear/SKILL.md)
*(what I use it for: ____)*
