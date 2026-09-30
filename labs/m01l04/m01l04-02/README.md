# m01l04-02 · Asking git what kind of thing a commit is

**Lesson:** [What A Commit Really Is](https://learnsome.tech/learn/git-course/m01l04) (lesson 1.4, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You will be able to open a commit object and name every field inside it.

In the lesson: This repository already has two commits behind us, made by a file being written and saved twice. The command that opens an object is git cat-file. Given the name HEAD, which for now you can read as the latest commit, the t flag answers what type it is. Git says: commit. The s flag answers how big it is, in bytes. That number is small, in the low hundreds, which should already tell you something. Whatever a commit is, it is not a copy of your files. It is a short record that refers to them.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline
   git cat-file -t HEAD
   git cat-file -s HEAD
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l04-02`.

## Expected output

```text
$ git log --oneline
87a8ebf Add a second line
e06f066 Add notes
$ git cat-file -t HEAD
commit
$ git cat-file -s HEAD
226
```

## How to check

`./check m01l04-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
