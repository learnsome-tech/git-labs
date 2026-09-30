# m03l02-02 · HEAD, read three ways

**Lesson:** [HEAD, And Why Detached HEAD Is Not An Error](https://learnsome.tech/learn/git-course/m03l02) (lesson 3.2, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to say what HEAD points at, detach it deliberately, and keep work made while detached.

In the lesson: Open the file. It does not hold an ID. It holds the word ref, a colon, and a path: refs slash heads slash main. That is a pointer to a pointer, and git calls it a symbolic reference. There is a polite way to ask the same question, which prints the same path without you knowing where the file lives. Now resolve HEAD to a commit and compare it with resolving the branch by name. Identical, because git followed HEAD to the branch, and the branch to the commit. Two hops, and you can see both of them.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   cat .git/HEAD
   git symbolic-ref HEAD
   git rev-parse HEAD
   git rev-parse main
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l02-02`.

## Expected output

```text
$ cat .git/HEAD
ref: refs/heads/main
$ git symbolic-ref HEAD
refs/heads/main
$ git rev-parse HEAD
87a8ebfdf95ba7a0bdcecb51b9e61427e2e59914
$ git rev-parse main
87a8ebfdf95ba7a0bdcecb51b9e61427e2e59914
```

## How to check

`./check m03l02-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
