# m06l01-03 · Rejected Push After Rewriting History

**Lesson:** [Amend, And The One Hard Rule](https://learnsome.tech/learn/git-course/m06l01) (lesson 6.1, module 6: Rewriting History, Tags And Workflows) · Pro  
**Check:** Read along

## Goal

Change the last commit and understand why you must never rewrite history that others have pulled.

In the lesson: If you have already pushed that original commit, your local branch and the remote branch have diverged. Your local branch has the new amended commit, but the remote still has the old one. When you try to push the branch, git rejects it, telling you that the tip of your branch is behind the remote counterpart.

## Files

- [`starter/NEEDS.md`](starter/NEEDS.md)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m06l01-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m06l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
