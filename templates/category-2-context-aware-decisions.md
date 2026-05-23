---
# name — kebab-case id; invoke with /name
name: context-aware-decision-skill

# description — loads every session; Claude triggers off this alone. Make clear the right
#   answer DEPENDS on context, so it fires when there are multiple valid paths. WHAT + WHEN.
description: Routes a request to the right path based on conditions. Trigger when there are multiple valid responses and the correct one depends on context — a symptom, a signal, a state. Returns the matched path, not a fixed answer.

# allowed-tools — a router only inspects + decides; it doesn't mutate. Read-only set keeps
#   it safe and cheap. (read-only skills → Read, Grep, Glob)
allowed-tools: Read, Grep, Glob
---

# Context-Aware Decision Skill

> CATEGORY 2 of 4. The shape: a decision tree / router. Same input shape, different
> output depending on what's true right now.

## When to use
<!-- the "right" action branches on conditions you can detect -->
- The right action branches on detectable conditions

## Decision tree
<!-- the core of the skill: the branches. each condition → a path -->
- **If** signal A (e.g. small + reversible) → route to path X
- **If** signal B (e.g. structural) → route to path Y
- **If** ambiguous → ask one clarifying question, then route

## How to detect each signal
<!-- spell out what each signal looks like, or the routing stays vague -->
- A looks like: ...
- B looks like: ...

## Output
<!-- always show the WHY so the user can override the route -->
- The matched path + why it was chosen

## Constraints
<!-- guardrails: a router decides, it doesn't execute the downstream work itself -->
- Route + explain only; don't perform the downstream action
- When unsure, ask — don't guess the branch

---

**Real skill reference:**
[`tape`](file:///Users/timothygailey/.claude/skills/tape/SKILL.md)
(triages work into small/observable/reversible vs structural) — also [`enzyme`](file:///Users/timothygailey/.claude/skills/enzyme/SKILL.md) (routes a UX symptom to the right framework lens)
*(what I use it for: ____)*
