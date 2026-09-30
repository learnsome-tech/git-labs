# m02l01 · Staging Deliberately: status, add, add --patch

Module 2: Everyday Git · lesson 2.1 · Pro · [Open the lesson](https://learnsome.tech/learn/git-course/m02l01)

**Goal:** You will be able to turn a messy working tree into commits that each say one thing.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l01-02](m02l01-02/) | Two unrelated edits, one working tree | Graded |
| [m02l01-03](m02l01-03/) | Staging one path, and the split that creates | Graded |
| [m02l01-04](m02l01-04/) | The short report, and its two columns | Graded |
| [m02l01-05](m02l01-05/) | What adding a path actually stages | Read along |
| [m02l01-06](m02l01-06/) | Opening a patch session, and leaving with q | Graded |
| [m02l01-07](m02l01-07/) | Taking the first change, leaving the second | Graded |
| [m02l01-08](m02l01-08/) | Proof: one hunk chosen, one hunk left behind | Graded |
| [m02l01-09](m02l01-09/) | Taking something back out of the index | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Split a file you have already made a mess of

1. Make two unrelated edits inside one file, then read: git status --short
2. Run git add --patch on that file, answer q, and check nothing was staged
3. Run it again: answer y to one change, n to the other, then compare both diffs
4. Put it back with git restore --staged, and read the two columns once more

> **Hint:** If one change git offers you covers two things, answer s to split it into smaller ones.

## Check yourself

- Why does an intermediate area make a commit easier to read later?
- In the short report, what do the left and right columns each describe?
- You add a file and then edit it again. Which version is in the index?
- Which two areas does git diff compare, and which two does the staged flag compare?
- How do you take a path back out of the index without losing the edit?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
