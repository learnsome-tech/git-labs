# m05l04-01 · Reading the Markers

**Lesson:** [Resolving A Conflict, Line By Line](https://learnsome.tech/learn/git-course/m05l04) (lesson 5.4, module 5: Working With Other People) · Pro  
**Check:** Read along

## Goal

You will be able to read conflict markers, resolve the file, and complete the merge.

In the lesson: When a file conflicts, Git writes both versions directly into the file, surrounded by conflict markers. The top section, marked by less-than signs and HEAD, shows what is on our branch. Then comes a separator of equals signs. Below that is the version from the other branch, ending with greater-than signs and the branch name. To resolve the conflict, you must edit this file so it looks exactly how you want the final result to be.

## Files

- [`starter/shopping.txt`](starter/shopping.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/shopping.txt` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1–2: our branch
   - Lines 3: a separator
   - Lines 4–5: the other branch
3. Notes from the lesson:
   - Line 1: Start of our changes
   - Line 3: Separates the two versions
   - Line 5: End of their changes

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m05l04-01` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m05l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
