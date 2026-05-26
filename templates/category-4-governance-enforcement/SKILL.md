---
# name — kebab-case id; invoke with /name
name: governance-enforcement-skill

# description — loads every session; Claude triggers off this alone. Make clear it GATES:
#   it checks, flags, can refuse — unlike passive knowledge. WHAT + WHEN. Keep tight.
description: Enforces rules and gates work that violates them. Trigger when output must pass a standard before it's accepted — audits, validation, compliance, required fields. Active: it checks, flags, and can refuse.

# allowed-tools — an enforcer inspects against rules; read-only keeps it from "fixing"
#   silently. Add write tools only if it's allowed to auto-remediate.
allowed-tools: Read, Grep, Glob, Bash
---

# Governance / Enforcement Skill

> CATEGORY 4 of 4. The shape: rules + a gate. Active — it validates against a standard
> and FLAGS or REFUSES on violation. The opposite of passive knowledge.

## When to use
<!-- output must clear a bar before it ships -->
- Output must meet a standard before it's accepted

## The rules (the gate)
<!-- the standard being enforced. MUST / MUST NOT / ALWAYS = the teeth -->
- MUST: ...
- MUST NOT: ...
- ALWAYS: ... (e.g. "always assign to me, never to someone else")
- REQUIRED FIELDS: ...

## Check procedure
<!-- deterministic checks belong in a SCRIPT (≈100% reliable), not the model's head -->
1. Run [`scripts/check.sh <target>`](scripts/check.sh) — the deterministic gate
2. For each violation → report `location: severity: problem → fix`
3. Pass/fail verdict (non-zero exit = blocked)

## On failure
<!-- decide the behavior: block, warn, or auto-fix — and say which -->
- Block / warn / auto-fix — and which

## Constraints
<!-- guardrails on the enforcer itself: scope of what it polices, no silent edits -->
- Police only the named standard; don't expand scope
- Report violations; don't silently rewrite unless auto-fix is explicitly allowed

---

**Real skill reference:**
[`claude-md-audit`](file:///Users/timothygailey/.claude/skills/claude-md-audit/SKILL.md)
(audits CLAUDE.md vs a checklist) — also [`skill-audit`](file:///Users/timothygailey/.claude/skills/skill-audit/SKILL.md) and the "always assign to me" rule in [`linear`](file:///Users/timothygailey/.claude/skills/linear/SKILL.md)
*(what I use it for: ____)*
