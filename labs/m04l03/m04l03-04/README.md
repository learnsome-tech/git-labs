# m04l03-04 · Fast Forwarding with Pull

**Lesson:** [Fetch Is Not Pull](https://learnsome.tech/learn/git-course/m04l03) (lesson 4.3, module 4: Remotes) · Pro  
**Check:** Graded

## Goal

The learner can explain that fetch downloads commits without changing the working tree, while pull fetches and then merges.

In the lesson: Let us look at pull. We are in the exact same state as before. Our teammate has pushed a second commit, and our local repository is one commit behind. This time, we run pull. Notice the output. First, it fetches from the remote, downloading the commits and updating origin slash main. Immediately after, it runs a fast forward merge to apply those changes to our local branch. The log shows we now have the new commit. Pull is nothing more than a fetch followed automatically by a merge.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l03/m04l03-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git pull
   git log --oneline
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m04l03-04`.

## Expected output

```text
$ git pull
From ../remote.git
   a1b2c3d..e4f5g6h  main       -> origin/main
Updating a1b2c3d..e4f5g6h
Fast-forward
$ git log --oneline
e4f5g6h Second
a1b2c3d First
```

## How to check

`./check m04l03-04` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
