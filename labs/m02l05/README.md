# m02l05 · Ignoring Files, And The Tracked File Trap

Module 2: Everyday Git · lesson 2.5 · Pro · [Open the lesson](https://learnsome.tech/learn/git-course/m02l05)

**Goal:** You will be able to write ignore patterns that work, and untrack a file you had already committed by mistake.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l05-02](m02l05-02/) | The pattern language, one line at a time | Graded |
| [m02l05-03](m02l05-03/) | The trap: a rule added after the file was committed | Graded |
| [m02l05-04](m02l05-04/) | The fix: out of the index, still on disk | Graded |
| [m02l05-05](m02l05-05/) | Untracking changes the future, not the past | Graded |
| [m02l05-06](m02l05-06/) | Debugging: which rule hid my file, and what is hidden | Graded |
| [m02l05-07](m02l05-07/) | A private list, and a nested list that overrules it | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Fall into the trap deliberately, then climb out

1. In a scratch repository, commit a file called secrets.env, then add that name to .gitignore
2. Run git status and watch git report the file as modified anyway
3. Untrack it with git rm --cached, commit the removal, and confirm the file is still on disk
4. Run git check-ignore -v secrets.env and git status --ignored, and read both answers aloud

> **Hint:** If status still lists the path after the removal, you have not committed the removal yet.

## Check yourself

- At which single moment does git consult the ignore file, and for which paths?
- You add a tracked file to .gitignore and status still calls it modified. Why?
- Which command untracks a file without deleting it, and what must follow it?
- A secret was committed, then untracked. What is still true, and what must you do?
- Two ignore files match one path, one nested inside the other. Which wins?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
