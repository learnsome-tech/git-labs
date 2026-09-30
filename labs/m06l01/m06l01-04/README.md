# m06l01-04 · Safely Updating Remote History with Lease

**Lesson:** [Amend, And The One Hard Rule](https://learnsome.tech/learn/git-course/m06l01) (lesson 6.1, module 6: Rewriting History, Tags And Workflows) · Pro  
**Check:** Read along

## Goal

Change the last commit and understand why you must never rewrite history that others have pulled.

In the lesson: To replace the remote branch with your new history, you could force push. But a blind force push will overwrite anything your teammates have pushed in the meantime. Instead, use force with lease. This checks that the remote branch has not moved since you last fetched. It is a safety net that protects other people's work while letting you rewrite your own.

## Files

- [`starter/NEEDS.md`](starter/NEEDS.md)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m06l01-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m06l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
