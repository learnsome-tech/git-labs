# m01l05 · The Three Areas: Working Tree, Index, Repository

Module 1: How Git Thinks · lesson 1.5 · Pro · [Open the lesson](https://learnsome.tech/learn/git-course/m01l05)

**Goal:** You will be able to read git status as a report on three named areas and say which one every line describes.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m01l05-02](m01l05-02/) | Where each of the three areas lives on disk | Graded |
| [m01l05-03](m01l05-03/) | Step one: a file git has never seen | Graded |
| [m01l05-04](m01l05-04/) | Step two: add copies it into the index | Graded |
| [m01l05-05](m01l05-05/) | Step three: staged and modified at the same time | Graded |
| [m01l05-07](m01l05-07/) | Three diffs, because there are three pairs | Graded |
| [m01l05-08](m01l05-08/) | Proving the index is a real thing | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Walk one file across all three areas

1. In a scratch repository, make a file, run git status, and name the area it sits in
2. Run git add, then git status again, and say the heading aloud before reading on
3. Edit that same file once more and find it listed under two headings at once
4. Run git diff, git diff --staged and git diff HEAD, naming the pair each compares

> **Hint:** If two of the diffs agree, the file is not yet both staged and modified.

## Check yourself

- Which of the three areas does the heading Changes to be committed describe?
- Where does the index physically live, and what kind of thing is it?
- How can one file be listed as both staged and modified at the same time?
- Which two areas does git diff --staged compare, and which does git diff compare?
- After staging a file, you edit it again. What is in the index now, and why?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
