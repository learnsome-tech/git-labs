# m01l03-04 · Inside .git: HEAD, config, objects and refs

**Lesson:** [A Repository Is A Folder With A Memory](https://learnsome.tech/learn/git-course/m01l03) (lesson 1.3, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You can turn any directory into a repository with git init, name what lives inside the hidden .git directory, and prove that the repository is that directory and nothing else.

In the lesson: Look inside and you find a handful of entries, four of which matter today. HEAD holds the answer to where am I. config holds the settings that apply to this project alone. objects is the store: every version of every file, and every commit, kept under an address made from its own content. refs holds your branch and tag names, each one a pointer to a commit. The rest is detail for later: hooks keeps scripts git can run for you, and info and description you can leave alone. HEAD is not locked away either: one line of text, naming a branch rather than a commit. Under refs sit two directories, heads and tags, both empty, because nothing has been committed.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   ls .git
   cat .git/HEAD
   ls .git/refs
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l03-04`.

## Expected output

```text
$ ls .git
HEAD
branches
config
description
hooks
info
objects
refs
$ cat .git/HEAD
ref: refs/heads/main
$ ls .git/refs
heads
tags
```

## How to check

`./check m01l03-04` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
