---
# name — unique id, kebab-case. This IS how you invoke it: /name
name: my-skill

# description — THE most important field. Loads into context EVERY session, and Claude
#   reads only this to decide whether to trigger the skill. Say WHAT it does AND WHEN to
#   use it, in the words a user would actually say. Hard limit 1024 chars; aim 150-200.
description: One sentence — what it does AND when Claude should reach for it. Front-load the trigger words a user would actually say. Hard limit 1024 chars.
---

# My Skill

The single instruction Claude should follow when this skill triggers.

<!--
THE FLOOR. A skill can be this short.
- Frontmatter (name + description) is the only required part — it's what Claude reads
  at session start to decide whether to surface this skill.
- Body = what to do once triggered.
Everything past this level is just more structure for bigger jobs.
-->

---

**Real skill reference:** a tiny single-purpose one I actually use →
[`ghostty`](file:///Users/timothygailey/.claude/skills/ghostty/SKILL.md)
*(what I use it for: ____)*
