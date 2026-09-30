# m02l03 · Conventional Commits

Module 2: Everyday Git · lesson 2.3 · Pro · [Open the lesson](https://learnsome.tech/learn/git-course/m02l03)

**Goal:** You will be able to write a conventional commit message and make git reject one that is not.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l03-03](m02l03-03/) | One well formed message, read top to bottom | Read along |
| [m02l03-05](m02l03-05/) | Asking the log a question only a grammar can answer | Graded |
| [m02l03-06](m02l03-06/) | A commit message hook, eleven lines of shell | Graded |
| [m02l03-07](m02l03-07/) | Rejected, accepted, and the way around it | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Adopt it, enforce it, then judge it

1. Rewrite three of your own recent subject lines to the convention, types and scopes
2. Install the commit-msg hook in a scratch repository and make it executable
3. Get one commit rejected and the corrected one accepted, reading the exit status
4. Find that commit again with git log --oneline --grep, then decide if it earns its keep

> **Hint:** If every message you try passes first time, the pattern is too generous: drop the space after the colon.

## Check yourself

- Which two types does the specification itself define, and what does each one mean?
- What are the two ways to mark a breaking change, and is one of them enough on its own?
- Why can `git log --oneline --grep '^feat'` answer a release question that plain prose cannot?
- Why does a fresh clone arrive without your commit-msg hook?
- When is Conventional Commits ceremony rather than leverage?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
