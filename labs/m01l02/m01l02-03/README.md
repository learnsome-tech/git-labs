# m01l02-03 · Proving the install, and asking git your name

**Lesson:** [Installing Git, And Telling It Who You Are](https://learnsome.tech/learn/git-course/m01l02) (lesson 1.2, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You will be able to install git, set the identity it writes into commits, and say which config file an answer came from.

In the lesson: Whatever route you took, you prove it the same way: ask git for its version. A version number comes back, so the program is installed and on your path. Now ask what it already knows about you. The global list is every setting stored against your user account, and here that is a handful of defaults about branches, colour and paging. Not one line names a person. Ask it straight out for your user name and the answer is silence: no name, no fallback, nothing git will invent for you. That silence matters, because git refuses to commit until it can name whoever is committing.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git --version
   git config --global --list
   git config --global user.name
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l02-03`.

## Expected output

```text
$ git --version
git version 2.54.0 (Apple Git-157)
$ git config --global --list
init.defaultbranch=main
core.abbrev=7
core.pager=cat
color.ui=false
commit.gpgsign=false
tag.gpgsign=false
gc.auto=0
$ git config --global user.name
```

## How to check

`./check m01l02-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
