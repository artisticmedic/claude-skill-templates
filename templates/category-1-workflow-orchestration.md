---
# name — kebab-case id; invoke with /name
name: workflow-orchestration-skill

# description — loads every session; Claude triggers off this alone. For orchestration,
#   make clear it owns the WHOLE process, not a one-off action. WHAT + WHEN. 1024 max.
description: Drives a multi-step process from start to finish. Trigger when the user wants to run THE process (plan → build → verify → ship), not a one-off action. Owns sequencing, saved state, and when to loop back.

# allowed-tools — orchestrators usually read + write state, so they need more tools.
#   Still prune to what the workflow actually touches.
allowed-tools: Read, Edit, Write, Bash
---

# Workflow Orchestration Skill

> CATEGORY 1 of 4. The shape: an ordered process + state that survives across turns.
> "When I invoke this, here's the sequence we follow."

## When to use
<!-- a repeatable multi-phase JOB, not a single command -->
- A repeatable, multi-phase job

## The process
<!-- numbered = sequence is the whole point. the loop-back is what makes it iterative -->
1. **Phase 1 — <name>**: do X, write state to a planning doc
2. **Phase 2 — <name>**: read prior state, do Y
3. **Loop**: if not done, return to the right phase (iterative refinement)
4. **Phase N — done**: summarize, hand off

## State / persistence
<!-- this is what lets a project survive a context-clear and stand the test of time -->
- Where planning docs live, and when Claude should re-read them
- What survives a context-clear

## Orchestration notes
<!-- name the OTHER skills/tools this one calls in sequence -->
- This skill may call other skills/tools in order — name them here

## Constraints
<!-- guardrails: keep the orchestrator from skipping phases or losing state -->
- Don't skip phases or fabricate state
- Out of scope: ...

---

**Real skill reference:**
[`se-00-workflow`](file:///Users/timothygailey/.claude/skills/se-00-workflow/SKILL.md)
(router: Discover → Plan → Build → Verify → Ship → Maintain) — and **gsd** ships as a plugin (`design-shaped/get-stuff-done`)
*(what I use it for: ____)*
