# m01l01-02 · The folder doing a history's job

**Lesson:** [Why Version Control, And Why Git Won](https://learnsome.tech/learn/git-course/m01l01) (lesson 1.1, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You can say what a version control system stores, why Git's distributed copy makes history a local question, and what Git's integrity claim rests on.

In the lesson: Here is that folder on screen, as a fact rather than a joke. Three files, three names, and nothing in the names that a machine could check. Really final is not later than version two because of anything inside the file; it is later because of what somebody meant while typing it. Read two of them and you can see they disagree about revenue and about costs. What you cannot see is which was written first, or whether a fourth version existed on Thursday and was overwritten on Friday. The information you need was never written down anywhere. It lived in one person's memory of the afternoon.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   ls
   cat report-final-v2.md
   cat report-really-final.md
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l01-02`.

## Expected output

```text
$ ls
report-final-v2.md
report-final.md
report-really-final.md
$ cat report-final-v2.md
Revenue is up four percent.
Costs are flat.
$ cat report-really-final.md
Revenue is up four percent.
Costs are down two percent.
```

## How to check

`./check m01l01-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
