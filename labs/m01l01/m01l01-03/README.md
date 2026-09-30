# m01l01-03 · What diff answers, and what it cannot

**Lesson:** [Why Version Control, And Why Git Won](https://learnsome.tech/learn/git-course/m01l01) (lesson 1.1, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You can say what a version control system stores, why Git's distributed copy makes history a local question, and what Git's integrity claim rests on.

In the lesson: You are not helpless without version control. The diff command compares two files line by line and points at exactly where they differ: the first pair differ about revenue, the second pair differ about costs. That is useful, and it is the shape of the answer you want. Now notice what diff cannot give you. It cannot say which of the two files came first. It cannot name the person who changed the revenue figure, or say why four percent replaced nothing at all. It compares two things you still happen to have, and it is silent about every version that was overwritten.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   diff report-final.md report-final-v2.md
   diff report-final-v2.md report-really-final.md
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l01-03`.

## Expected output

```text
$ diff report-final.md report-final-v2.md
1c1
< Revenue is up.
---
> Revenue is up four percent.
$ diff report-final-v2.md report-really-final.md
2c2
< Costs are flat.
---
> Costs are down two percent.
```

## How to check

`./check m01l01-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
