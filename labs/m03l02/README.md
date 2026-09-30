# m03l02 · HEAD, And Why Detached HEAD Is Not An Error

Module 3: Branches, HEAD And History · lesson 3.2 · Pro · [Open the lesson](https://learnsome.tech/learn/git-course/m03l02)

**Goal:** You will be able to say what HEAD points at, detach it deliberately, and keep work made while detached.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l02-02](m03l02-02/) | HEAD, read three ways | Graded |
| [m03l02-03](m03l02-03/) | Switching branches rewrites HEAD | Graded |
| [m03l02-05](m03l02-05/) | Naming commits without ids | Graded |
| [m03l02-07](m03l02-07/) | Detaching on purpose | Graded |
| [m03l02-08](m03l02-08/) | Committing while detached, and being warned | Graded |
| [m03l02-09](m03l02-09/) | Keeping the work, without typing an id | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Detach, commit, and get it back

1. In a scratch repository, run: cat .git/HEAD, then switch branch and read it again
2. Detach on purpose: git switch --detach HEAD~1, and read what status now calls your position
3. Make a commit while detached, then run git switch main and read the whole warning
4. Get the commit back as a branch, first by copying the printed id, then by using a single dash

> **Hint:** Do this in a repository you do not mind damaging, so you can read the warnings rather than fear them.

## Check yourself

- What is inside the HEAD file when you are on a branch?
- Which file does switching a branch change, and which file does committing change?
- What exactly is different about HEAD when it is detached?
- Why does git warn you when you leave a detached HEAD after committing?
- Name two ways to keep a commit made while detached.

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
