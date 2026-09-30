# m06l03-02 · Cherry Picking a Specific Commit

**Lesson:** [Cherry Picking, Reflog, And Getting Work Back](https://learnsome.tech/learn/git-course/m06l03) (lesson 6.3, module 6: Rewriting History, Tags And Workflows) · Pro  
**Check:** Read along

## Goal

Copy individual commits to a different branch and recover lost commits using the reflog.

In the lesson: To copy a commit, switch to the branch that should receive it, and run git cherry pick followed by the hash of the commit you want. Git reads the changes that commit introduced, applies them to your working tree, and immediately commits them. You now have the fix, without pulling in the unfinished feature work.

## Files

- [`starter/NEEDS.md`](starter/NEEDS.md)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m06l03-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m06l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
