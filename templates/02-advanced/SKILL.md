---
# name — kebab-case id; invoke with /name
name: advanced-skill

# description — single most important field. Loads every session; Claude reads ONLY this
#   to decide whether to load the rest. Triggers + scope + what it does NOT cover. 1024 max.
description: Full description with explicit triggers, scope, and what it does NOT cover. This is the single most important field — Claude decides whether to load the rest of the skill based on it. 1024 char hard limit.

# allowed-tools — whitelist the tools this skill may touch. Prune to the minimum: shrinks
#   permission prompts AND limits blast radius. Read-only skill? Read, Grep, Glob only.
allowed-tools: Read, Edit, Bash, Grep, Glob

# disable-model-invocation — true = lazy-load: skill won't auto-trigger or sit in the
#   catalog; fires only when YOU call /name. Use for heavy or rarely-auto-fired skills to
#   dodge the context tax. (Leave commented = Claude may auto-invoke it.)
# disable-model-invocation: true
---

# Advanced Skill

## Overview
<!-- the mental model in 2-3 sentences. orient the reader before the steps -->
What this skill is for, in 2-3 sentences. The mental model.

## When to use / when NOT to use
<!-- the NOT list is what prevents over-triggering -->
- Use when: ...
- Skip when: ...

## Workflow
<!-- the procedure. branch points are where context-aware decisions live -->
1. Step
2. Decision point — if A → do X; if B → load `references/branch-b.md`
3. Step

## Progressive disclosure (the 3 levels)
<!--
1. Metadata (frontmatter)      → ALWAYS loaded. Keep it tight.
2. This SKILL.md body          → loaded only when the skill triggers.
3. Bundled resources below     → loaded ONLY on demand, when the body points to them.
This is how a "big" skill stays cheap until you actually need its depth.
-->
- `references/deep-topic.md` — load when the user goes deep on X
- `references/edge-cases.md` — load when handling Y

## Scripts / assets
<!-- push repeatable mechanical work into a script; don't make Claude reinvent it inline -->
- `scripts/do-thing.sh` — run for repeatable mechanical work

## Constraints / guardrails
<!-- hard limits. MUST / MUST NOT keep the skill from doing damage or drifting scope -->
- MUST: ...
- MUST NOT: ...

## Examples
<!-- input → expected behavior. anchors the model on what "good" looks like -->
- Input → expected behavior

<!--
THE CEILING. Frontmatter w/ allowed-tools + optional lazy-load flag, a branching
workflow, references/ + scripts/ loaded on demand, hard guardrails, examples.
Keep the SKILL.md body under ~5,000 words — push detail into references/.
-->

---

**Real skill reference:** a rich, DB-backed one I use →
[`ui-ux-pro-max`](file:///Users/timothygailey/.claude/skills/ui-ux-pro-max/SKILL.md)
*(what I use it for: ____)*
