# m02l01-05 · What adding a path actually stages

**Lesson:** [Staging Deliberately: status, add, add --patch](https://learnsome.tech/learn/git-course/m02l01) (lesson 2.1, module 2: Everyday Git) · Pro  
**Check:** Read along

## Goal

You will be able to turn a messy working tree into commits that each say one thing.

In the lesson: One thing here is worth being exact about, because it catches almost everybody once. The index is not a list of file names waiting to be committed. It is a whole tree, a complete picture of the project, and adding a path replaces that path inside the picture. So when you add a file, you stage the version in front of you at that moment. Not the file, and not whatever the file becomes afterwards. Edit it again and the index quietly keeps the older version, which is where a letter in both columns comes from. It only means you took a snapshot, then kept working, and status is telling you both halves of that.

## Files

- [`starter/what-adding-a-path-actually-stages.txt`](starter/what-adding-a-path-actually-stages.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/what-adding-a-path-actually-stages.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m02l01-05` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
