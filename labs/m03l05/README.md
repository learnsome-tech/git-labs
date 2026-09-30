# m03l05 · Undoing: restore, reset, revert And stash

Module 3: Branches, HEAD And History · lesson 3.5 · Pro · [Open the lesson](https://learnsome.tech/learn/git-course/m03l05)

**Goal:** You will be able to choose the right undo command by naming which area or pointer you want to change.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l05-02](m03l05-02/) | Throwing away an edit you have not committed | Graded |
| [m03l05-03](m03l05-03/) | Taking something back out of the index | Graded |
| [m03l05-05](m03l05-05/) | Soft: keep everything, just unmake the commit | Graded |
| [m03l05-06](m03l05-06/) | Mixed: the default, and what it adds | Graded |
| [m03l05-07](m03l05-07/) | Hard: the one that discards your files | Graded |
| [m03l05-09](m03l05-09/) | Reverting a commit that others already have | Graded |
| [m03l05-10](m03l05-10/) | Stash: put it down, pick it up | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Undo the same commit three ways

1. Make two commits, then undo the second with a soft reset and look at status
2. Redo it, undo it with a mixed reset, and describe the difference in one sentence
3. Redo it again and revert it instead; compare git log after the reset and after the revert
4. Start an edit, stash it, switch branch and back, then pop it

> **Hint:** Do all of this in a scratch repository, and prefer the soft and mixed flags while you are experimenting.

## Check yourself

- Which two areas can git restore change, and which flag selects them?
- What does reset actually move, and what do soft, mixed and hard add to that?
- Why is revert the right choice for a commit that has been pushed?
- Which undo in this lesson can destroy work that git has no record of?
- What state does your working tree end up in after a stash?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
