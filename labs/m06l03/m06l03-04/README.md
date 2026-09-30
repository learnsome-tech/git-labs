# m06l03-04 · Recovering Lost Commits with Reflog

**Lesson:** [Cherry Picking, Reflog, And Getting Work Back](https://learnsome.tech/learn/git-course/m06l03) (lesson 6.3, module 6: Rewriting History, Tags And Workflows) · Pro  
**Check:** Read along

## Goal

Copy individual commits to a different branch and recover lost commits using the reflog.

In the lesson: Let us say we ran a hard reset and lost a commit. We can run git reflog to read the diary. At position zero, it shows the reset. At position one, it shows our lost commit. Because we know the hash of the lost commit, we can rescue it by creating a new branch pointing directly at that hash.

## Files

- [`starter/NEEDS.md`](starter/NEEDS.md)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m06l03-04` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m06l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
