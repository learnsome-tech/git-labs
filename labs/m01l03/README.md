# m01l03 · A Repository Is A Folder With A Memory

Module 1: How Git Thinks · lesson 1.3 · Free · [Open the lesson](https://learnsome.tech/learn/git-course/m01l03)

**Goal:** You can turn any directory into a repository with git init, name what lives inside the hidden .git directory, and prove that the repository is that directory and nothing else.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l03-02](m01l03-02/) | Turning a folder into a repository with git init | Graded |
| [m01l03-03](m01l03-03/) | The hidden directory sitting beside your files | Graded |
| [m01l03-04](m01l03-04/) | Inside .git: HEAD, config, objects and refs | Graded |
| [m01l03-05](m01l03-05/) | git status on a repository with no commits | Graded |
| [m01l03-06](m01l03-06/) | The repository is the hidden directory, and nothing else | Graded |
| [m01l03-07](m01l03-07/) | Running git init twice, and nesting by mistake | Graded |
| [m01l03-08](m01l03-08/) | Where the repository ends, and which one you are in | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Initialize a repository, then inspect it

1. Create a directory, cd into it, run git init, then run it again and read the message.
2. Run ls -a and ls .git, cat .git/HEAD, and check .git/objects holds no versions yet.
3. Copy a project you already keep in git with cp -r, and run git log inside the copy.
4. From a subdirectory of it, run git rev-parse --show-toplevel and --show-prefix.

> **Hint:** If git answers that this is not a git repository, you are outside one: rev-parse --show-toplevel fails in exactly the same way, and that is a useful test.

## Check yourself

- What two parts make up a repository, and which of them is hidden?
- What is in .git/HEAD immediately after git init, and why is that not a commit?
- You copy a project folder with cp -r. Why does the copy have the whole history?
- Why does git init print Reinitialized, and why is a nested repository a mistake?
- From a subdirectory, which command tells you the root of the repository you are in?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
