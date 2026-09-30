# m06l01-02 · Fixing the Last Commit with Amend

**Lesson:** [Amend, And The One Hard Rule](https://learnsome.tech/learn/git-course/m06l01) (lesson 6.1, module 6: Rewriting History, Tags And Workflows) · Pro  
**Check:** Read along

## Goal

Change the last commit and understand why you must never rewrite history that others have pulled.

In the lesson: The most common rewrite is fixing the last commit. If you forgot a file, or made a typo in the message, stage the changes and run git commit with the amend flag. This takes the current staging area, combines it with the parent of the last commit, and creates a completely new commit. Checking the log, we see only one commit, not two.

## Files

- [`starter/NEEDS.md`](starter/NEEDS.md)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m06l01-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m06l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
