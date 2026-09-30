# m06l02-02 · The Rebase Todo File

**Lesson:** [Interactive Rebase: Squash, Reorder, Reword](https://learnsome.tech/learn/git-course/m06l02) (lesson 6.2, module 6: Rewriting History, Tags And Workflows) · Pro  
**Check:** Read along

## Goal

Clean up a local branch by squashing, rewording, and reordering commits before sharing.

In the lesson: When you start an interactive rebase, git opens a todo list in your text editor. Each line is a commit, listed from oldest to newest. You change the command at the start of the line. We can keep the first commit by leaving it as pick, squash the second commit into the first one, and reword the third commit to give it a better message.

## Files

- [`starter/git-rebase-todo`](starter/git-rebase-todo): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/git-rebase-todo` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1: keep the first
   - Lines 2: squash the second
   - Lines 3: reword the third
3. Notes from the lesson:
   - Line 2: melds into the commit above it

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m06l02-02` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m06l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
