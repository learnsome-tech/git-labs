# m03l02-05 · Naming commits without ids

**Lesson:** [HEAD, And Why Detached HEAD Is Not An Error](https://learnsome.tech/learn/git-course/m03l02) (lesson 3.2, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to say what HEAD points at, detach it deliberately, and keep work made while detached.

In the lesson: Three commits, newest at the top. Ask git to resolve one step back and it hands you the abbreviated ID of the middle commit, which matches the middle line of the log. Ask it to show two steps back, with the flags that suppress the patch and keep it to one line, and there is the oldest one. Nothing here needed you to type an ID or copy anything from the screen. In day to day work that matters more than it sounds, because typed IDs are where mistakes come from.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline
   git rev-parse --short HEAD~1
   git show -s --oneline HEAD~2
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l02-05`.

## Expected output

```text
$ git log --oneline
23ab440 Add a third line
6fa2cab Add a second line
5a9bfe1 Add notes
$ git rev-parse --short HEAD~1
6fa2cab
$ git show -s --oneline HEAD~2
5a9bfe1 Add notes
```

## How to check

`./check m03l02-05` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
