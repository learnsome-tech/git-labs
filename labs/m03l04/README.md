# m03l04 · Rebase: The Same Work, A Different History

Module 3: Branches, HEAD And History · lesson 3.4 · Pro · [Open the lesson](https://learnsome.tech/learn/git-course/m03l04)

**Goal:** You will be able to rebase a branch, show that the commits are copies, and say when not to do it.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l04-02](m03l04-02/) | The fork we are going to remove | Graded |
| [m03l04-03](m03l04-03/) | Rebasing, and watching the id change | Graded |
| [m03l04-04](m03l04-04/) | The fork is gone | Graded |
| [m03l04-07](m03l04-07/) | The same work, merged and rebased, side by side | Graded |
| [m03l04-08](m03l04-08/) | When a replay does not apply cleanly | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Rebase something and prove what changed

1. Build a fork: one commit on main, one on a branch, from a shared commit
2. Record the branch tip with git rev-parse, rebase onto main, and record it again
3. Show that the commit you rebased onto kept its id and yours did not
4. Repeat with both sides editing the same line, and use git rebase --abort to back out

> **Hint:** git log --oneline --graph --all before and after is the fastest way to see what the operation did.

## Check yourself

- Why does a rebased commit get a different ID?
- After a rebase, what happened to the original commits?
- Which branch is left untouched by a rebase: the one you are on, or the one you name?
- State the rule about when not to rebase, and why it exists.
- What does git rebase --abort restore?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
