# m02l04 · Reading History: log, show And diff

Module 2: Everyday Git · lesson 2.4 · Pro · [Open the lesson](https://learnsome.tech/learn/git-course/m02l04)

**Goal:** You will be able to interrogate a repository with log, show and diff, and pick the flag that answers the question you actually have.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l04-02](m02l04-02/) | What plain git log prints, and the oneline habit | Graded |
| [m02l04-03](m02l04-03/) | Shaping the list: graph, a count, a format of your own | Graded |
| [m02l04-04](m02l04-04/) | Which files a commit touched, and when one was last edited | Graded |
| [m02l04-05](m02l04-05/) | Filtering: dates, people, words, and a vanished string | Graded |
| [m02l04-06](m02l04-06/) | The patch flag: the change itself, one file at a time | Graded |
| [m02l04-07](m02l04-07/) | Show: one commit, and one file as it was then | Graded |
| [m02l04-09](m02l04-09/) | Between two commits, in two dots and in three | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Interrogate a history you did not write

1. Open any repository with real history and list the newest ten commits with git log --oneline
2. Narrow to one file: git log --oneline --stat -- path/to/file, and read who touched it
3. Pick a function name from that file and run git log --oneline -S theName
4. Print an old version without checking anything out: git show HEAD~3:path/to/file

> **Hint:** If a filter returns nothing, widen it: a date range and an author together exclude almost everything.

## Check yourself

- Which flag collapses each commit to one line, and which two fields does it keep?
- You need every commit that touched src/parser.py. What do you type?
- What question does git log -S answer that git log --grep cannot?
- What does git diff A...B compare, and when does it differ from git diff A B?
- How do you read a file as it was three commits ago without checking anything out?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
