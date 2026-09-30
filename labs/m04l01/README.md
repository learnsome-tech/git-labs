# m04l01 · What A Remote Actually Is

Module 4: Remotes · lesson 4.1 · Pro · [Open the lesson](https://learnsome.tech/learn/git-course/m04l01)

**Goal:** You will be able to say what a remote is, attach one to a repository, and read back everything git knows about it.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m04l01-02](m04l01-02/) | Making the server: a repository with no working tree | Graded |
| [m04l01-04](m04l01-04/) | Attaching a name to a path | Graded |
| [m04l01-05](m04l01-05/) | Asking what is actually over there | Graded |
| [m04l01-07](m04l01-07/) | Rename it, and nothing breaks | Graded |
| [m04l01-08](m04l01-08/) | A remote tracking branch is a file you do not move | Graded |
| [m04l01-09](m04l01-09/) | Three kinds of ref, all of them files | Read along |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Build a remote out of a folder

1. Make a bare repository beside a project of yours, then list what is inside it
2. Attach it with git remote add, and read the result with git remote -v and git config
3. Run git remote show and git ls-remote against it, and compare what each one tells you
4. Rename the remote, then set-url it at a second bare repository, checking git branch -r as you go

> **Hint:** Everything here is local, so nothing needs an account, a key or a network.

## Check yourself

- What two pieces of information make up a remote?
- What does a bare repository not have, and why does a server want it that way?
- Is origin a reserved word in git, and what happens if you rename it?
- Where does a remote tracking branch live, and what makes it move?
- Why can a repository in a sibling folder stand in for a hosting service?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
