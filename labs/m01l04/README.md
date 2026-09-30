# m01l04 · What A Commit Really Is

Module 1: How Git Thinks · lesson 1.4 · Free · [Open the lesson](https://learnsome.tech/learn/git-course/m01l04)

**Goal:** You will be able to open a commit object and name every field inside it.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l04-02](m01l04-02/) | Asking git what kind of thing a commit is | Graded |
| [m01l04-03](m01l04-03/) | The commit, printed in full | Graded |
| [m01l04-05](m01l04-05/) | Following the tree down to the file | Graded |
| [m01l04-06](m01l04-06/) | The first commit has no parent | Graded |
| [m01l04-08](m01l04-08/) | Rebuilding the id from the text | Graded |
| [m01l04-09](m01l04-09/) | The same change made twice is two commits | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Open a commit of your own

1. In any repository you have, run: git cat-file -p HEAD
2. Name each line out loud before reading on: tree, parent, author, committer, message
3. Follow the tree: git cat-file -p 'HEAD^{tree}', then print one blob you find in it
4. Find the root commit with: git rev-list --max-parents=0 HEAD, and open it

> **Hint:** A root commit is the one with no parent line. A repository can have more than one.

## Check yourself

- What are the five things stored in a commit object?
- Why does a commit have no list of changed files?
- Why does changing an old commit change the ID of every commit after it?
- Two people make the identical change. Why are their commit IDs different?
- What does it mean for a commit to have no parent line?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
