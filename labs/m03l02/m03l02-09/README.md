# m03l02-09 · Keeping the work, without typing an id

**Lesson:** [HEAD, And Why Detached HEAD Is Not An Error](https://learnsome.tech/learn/git-course/m03l02) (lesson 3.2, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to say what HEAD points at, detach it deliberately, and keep work made while detached.

In the lesson: You could copy that ID out of the warning, and it would work. There is a way that does not ask you to copy anything. A single dash means the place you were before, so go back to where you were, still detached. Now give it a name: switch with the create flag makes a branch here and moves you onto it, which is the recommended path and the one to reach for first. List the branches and the experiment is an ordinary branch like any other. The better habit, though, is to name it before you leave rather than after.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-09/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git switch --detach -
   git switch -c experiment
   git branch
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l02-09`.

## Expected output

```text
$ git switch --detach -
HEAD is now at ac70779 Try something out
$ git switch -c experiment
Switched to a new branch 'experiment'
$ git branch
* experiment
  main
```

## How to check

`./check m03l02-09` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
