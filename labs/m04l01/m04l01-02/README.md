# m04l01-02 · Making the server: a repository with no working tree

**Lesson:** [What A Remote Actually Is](https://learnsome.tech/learn/git-course/m04l01) (lesson 4.1, module 4: Remotes) · Pro  
**Check:** Graded

## Goal

You will be able to say what a remote is, attach one to a repository, and read back everything git knows about it.

In the lesson: Here is the other end of every command in this module, built in front of you. The bare flag tells git to make a repository with no working tree, so make one now, in the folder beside this one. Git prints the same sentence about an empty repository that you read in the first module. List what is inside and none of your files are there: a HEAD file, a config file, and the directories where git keeps objects and refs. This is the content of a dot git directory, lifted out and left standing on its own. Ask it what it is and it agrees: the core dot bare setting is true.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l01/m04l01-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git init --bare ../server.git
   ls ../server.git
   git -C ../server.git config core.bare
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m04l01-02`.

## Expected output

```text
$ git init --bare ../server.git
Initialized empty Git repository in /tmp/server.git/
$ ls ../server.git
HEAD
config
description
hooks
info
objects
refs
$ git -C ../server.git config core.bare
true
```

## How to check

`./check m04l01-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
