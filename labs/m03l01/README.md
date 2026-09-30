# m03l01 · A Branch Is A Moving Pointer

Module 3: Branches, HEAD And History · lesson 3.1 · Pro · [Open the lesson](https://learnsome.tech/learn/git-course/m03l01)

**Goal:** You will be able to create, rename and delete branches, and say exactly what each one is on disk.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l01-02](m03l01-02/) | The branch, as a file on disk | Graded |
| [m03l01-03](m03l01-03/) | Committing moves the pointer | Graded |
| [m03l01-05](m03l01-05/) | Creating a branch is writing one file | Graded |
| [m03l01-06](m03l01-06/) | Switching, and then diverging | Graded |
| [m03l01-07](m03l01-07/) | Seeing the shape of it | Graded |
| [m03l01-08](m03l01-08/) | Renaming and deleting | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Prove it on your own repository

1. In a repository of your own, run: cat .git/refs/heads/main, then git rev-parse main
2. Make a commit, read that file again, and confirm only the id changed
3. Create a branch, then run: wc -c on its file under .git/refs/heads
4. Try git branch -d on an unmerged branch, read the refusal, then keep the id it printed

> **Hint:** If your default branch is called something other than main, use that name in the paths.

## Check yourself

- Where on disk does git store what a branch points at, and what is in that file?
- What two things happen when you make a commit on a branch?
- Why is creating a branch instant even on a very large repository?
- Why does git refuse to delete some branches with the lower case d flag?
- Two branches point at different IDs. What is the commit where they split called?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
