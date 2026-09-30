# m01l02 · Installing Git, And Telling It Who You Are

Module 1: How Git Thinks · lesson 1.2 · Free · [Open the lesson](https://learnsome.tech/learn/git-course/m01l02)

**Goal:** You will be able to install git, set the identity it writes into commits, and say which config file an answer came from.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l02-02](m01l02-02/) | Installing git: shown per platform, not run here | Read along |
| [m01l02-03](m01l02-03/) | Proving the install, and asking git your name | Graded |
| [m01l02-04](m01l02-04/) | Telling git who you are, once per machine | Graded |
| [m01l02-06](m01l02-06/) | System, then global, then local: the last wins | Graded |
| [m01l02-07](m01l02-07/) | Four settings worth having on the first day | Graded |
| [m01l02-08](m01l02-08/) | Work email here, personal email there | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Set your own identity, and find its file

1. Run: git --version, then git config --global --list
2. Set both: git config --global user.name 'Your Name', then the same for user.email
3. Read it back: git config --show-origin user.name
4. In one repository: git config --local user.email other@address, then read it back

> **Hint:** The three levels are system, global and local, and the nearest one to the repository wins.

## Check yourself

- Which command proves git is installed and on your path?
- Why does git refuse to make a commit before a name and email are set?
- Where does the global flag write, and where does the local flag write?
- Your last three commits carry the wrong email. What does fixing them cost?
- How do you find out which file an answer to git config came from?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
