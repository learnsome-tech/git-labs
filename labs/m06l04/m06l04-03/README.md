# m06l04-03 · Finding Bugs with Git Bisect

**Lesson:** [Investigating History: blame, bisect And worktree](https://learnsome.tech/learn/git-course/m06l04) (lesson 6.4, module 6: Rewriting History, Tags And Workflows) · Pro  
**Check:** Read along

## Goal

Find which commit introduced a change using blame and bisect, and check out multiple branches at once with worktree.

In the lesson: You begin by running git bisect start. Then, you tell git that the current commit is bad. Finally, you tell it which older commit was good. Git immediately checks out a commit in the middle. You run your tests, and type git bisect bad or git bisect good. It repeats this until it isolates the single commit that introduced the failure.

## Files

- [`starter/NEEDS.md`](starter/NEEDS.md)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/session.sh` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m06l04-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m06l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
