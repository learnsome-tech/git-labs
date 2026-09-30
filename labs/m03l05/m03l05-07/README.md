# m03l05-07 · Hard: the one that discards your files

**Lesson:** [Undoing: restore, reset, revert And stash](https://learnsome.tech/learn/git-course/m03l05) (lesson 3.5, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to choose the right undo command by naming which area or pointer you want to change.

In the lesson: Now the hard flag. Git prints where HEAD is now, which is the one courtesy it offers. The pointer moved as before, status reports nothing at all, and reading the file shows the second line has gone from disk. The commit itself is still recoverable, because it is an object and the reflog remembers where your branch has been, and that is module six. What is not recoverable is anything that was only in your working tree and had never been committed. Hard reset is the command to type slowly.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git reset --hard HEAD~1
   git log --oneline
   git status --short
   cat notes.txt
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l05-07`.

## Expected output

```text
$ git reset --hard HEAD~1
HEAD is now at 5a9bfe1 Add notes
$ git log --oneline
5a9bfe1 Add notes
$ git status --short
$ cat notes.txt
one
```

## How to check

`./check m03l05-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
