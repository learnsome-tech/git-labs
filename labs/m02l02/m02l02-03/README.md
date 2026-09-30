# m02l02-03 · What a message looks like when it is doing its job

**Lesson:** [Committing, And What A Good Message Says](https://learnsome.tech/learn/git-course/m02l02) (lesson 2.2, module 2: Everyday Git) · Pro  
**Check:** Read along

## Goal

You will be able to commit in every form git offers and write a subject and body that survive the views git puts them in.

In the lesson: Here is a real commit message in a file, which is what your editor holds when you run commit with no flag at all. It opens with a subject line, and the shape is fixed: imperative mood, capitalised, no full stop, and short. Forty two characters here. After a blank line comes the body, wrapped near seventy two columns. Notice what it does not do: it never lists the files that changed, because the diff lists them already. It says why the change exists, and records what was considered and rejected, so nobody proposes it again. And trailers come last, one per line: the issue this answers, and whoever paired on it.

## Files

- [`starter/message.txt`](starter/message.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/message.txt` alongside the lesson.
2. Follow it the way the lesson builds it:
   - Lines 1: a subject line
   - Lines 2–4: After a blank line comes the body
   - Lines 5–11: considered and rejected
   - Lines 12–14: trailers come last
3. Notes from the lesson:
   - Line 1: Imperative, capitalised, forty-two characters, and no full stop
   - Line 3: Wrapped by hand, so no terminal has to reflow it
   - Line 10: The alternative you weighed, so nobody proposes it again
   - Line 13: Trailers: machine readable, one per line, last of all

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l02-03` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
