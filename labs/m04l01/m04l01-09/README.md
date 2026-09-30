# m04l01-09 · Three kinds of ref, all of them files

**Lesson:** [What A Remote Actually Is](https://learnsome.tech/learn/git-course/m04l01) (lesson 4.1, module 4: Remotes) · Pro  
**Check:** Read along

## Goal

You will be able to say what a remote is, attach one to a repository, and read back everything git knows about it.

In the lesson: Your repository now holds three kinds of pointer, and you have read all of them off the disk. A local branch, under refs slash heads, is yours: committing moves it. A remote tracking branch, under refs slash remotes, is a record of where a branch on the other side stood the last time you spoke to that side, and only fetching or pushing updates it. HEAD names the branch you are standing on. The remote is not a ref at all; it is a name and a location in the config file. Everything the next two lessons do is moving IDs between the first two of those, over the third.

## Files

- [`starter/three-kinds-of-ref-all-of-them-files.txt`](starter/three-kinds-of-ref-all-of-them-files.txt): the listing from the lesson
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Read `starter/three-kinds-of-ref-all-of-them-files.txt` alongside the lesson.

## How to check

**Read along.** It is a listing to read alongside the lesson, not a program to run.

There is nothing to check: `./check m04l01-09` says so and moves on.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
