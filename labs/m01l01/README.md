# m01l01 · Why Version Control, And Why Git Won

Module 1: How Git Thinks · lesson 1.1 · Free · [Open the lesson](https://learnsome.tech/learn/git-course/m01l01)

**Goal:** You can say what a version control system stores, why Git's distributed copy makes history a local question, and what Git's integrity claim rests on.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l01-02](m01l01-02/) | The folder doing a history's job | Graded |
| [m01l01-03](m01l01-03/) | What diff answers, and what it cannot | Graded |
| [m01l01-06](m01l01-06/) | The whole history, answered from your disk | Graded |
| [m01l01-08](m01l01-08/) | The id is the content, not the file name | Graded |
| [m01l01-09](m01l01-09/) | One letter changed, a different id | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Feel the problem before the tools arrive

1. Make a folder holding report-final, report-final-v2 and report-really-final.
2. For each file, try to write down who wrote it, when, and why. Note what you cannot answer.
3. Run: printf 'one line' | git hash-object --stdin, twice, then with one letter changed.

> **Hint:** You are not meant to succeed at the second task. The gaps in your table are the list of things a repository records for you.

## Check yourself

- What three questions can a folder of hopefully named files not answer?
- What does a version control system keep alongside the bytes of a version?
- Why can git show you last month's history with no network connection?
- Two files have different names and identical content. Why is their ID the same?
- What does naming content by a hash of that content give you?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
