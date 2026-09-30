# m02l03-03 · One well formed message, read top to bottom

**Lesson:** [Conventional Commits](https://learnsome.tech/learn/git-course/m02l03) (lesson 2.3, module 2: Everyday Git) · Pro  
**Check:** Read along

## Goal

You will be able to write a conventional commit message and make git reject one that is not.

In the lesson: Read one written properly. The subject names its type as feat, gives a scope of auth in parentheses, and carries an exclamation mark before the colon, which is the compact way of saying this change breaks a caller. The description after it is an ordinary imperative sentence, the craft of the previous lesson. Then a blank line, and the body, which is free form prose and owes the specification nothing beyond that blank line above it. Last comes the footer. A breaking change footer says the same thing at length: those two words in capitals, a colon, a space, and what a caller must now do differently. Either mark is enough alone.

## Files

- [`starter/COMMIT_EDITMSG`](starter/COMMIT_EDITMSG): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/COMMIT_EDITMSG` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1: names its type as feat
   - Lines 2–5: free form prose
   - Lines 6–7: Last comes the footer
3. Notes from the lesson:
   - Line 1: type feat, scope auth, then ! immediately before the colon
   - Line 3: the body is free form, one blank line below the description
   - Line 7: BREAKING CHANGE must be uppercase, then colon, space, description

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l03-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
