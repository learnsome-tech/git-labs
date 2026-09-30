# m04l03-03 · Inspecting Remote Tracking Commits

**Lesson:** [Fetch Is Not Pull](https://learnsome.tech/learn/git-course/m04l03) (lesson 4.3, module 4: Remotes) · Pro  
**Check:** Graded

## Goal

The learner can explain that fetch downloads commits without changing the working tree, while pull fetches and then merges.

In the lesson: If we run status again, git now knows we are behind by one commit. Fetch downloaded the commit, but it did not touch our working tree or our local main branch. We can see the new commit by asking for the log of the remote tracking branch.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l03/m04l03-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git status
   git log --oneline origin/main
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m04l03-03`.

## Expected output

```text
$ git status
On branch main
Your branch is behind 'origin/main' by 1 commit, and can be fast-forwarded.
  (use "git pull" to update your local branch)

nothing to commit, working tree clean
$ git log --oneline origin/main
e4f5g6h Second
a1b2c3d First
```

## How to check

`./check m04l03-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
