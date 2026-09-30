# m03l05-06 · Mixed: the default, and what it adds

**Lesson:** [Undoing: restore, reset, revert And stash](https://learnsome.tech/learn/git-course/m03l05) (lesson 3.5, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to choose the right undo command by naming which area or pointer you want to change.

In the lesson: Run it again with no flag at all, which means mixed. Git tells you what it unstaged on the way. The log shows the same single commit as before, so the pointer moved the same distance. The difference is in status: the change is present but not staged, because mixed reset the index as well. Your files were never touched by either of these. That is worth repeating, because the fear people have about reset belongs entirely to the third flag and they apply it to all three.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git reset HEAD~1
   git log --oneline
   git status --short
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l05-06`.

## Expected output

```text
$ git reset HEAD~1
Unstaged changes after reset:
M	notes.txt
$ git log --oneline
5a9bfe1 Add notes
$ git status --short
 M notes.txt
```

## How to check

`./check m03l05-06` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
