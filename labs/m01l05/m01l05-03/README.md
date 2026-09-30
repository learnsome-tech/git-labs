# m01l05-03 · Step one: a file git has never seen

**Lesson:** [The Three Areas: Working Tree, Index, Repository](https://learnsome.tech/learn/git-course/m01l05) (lesson 1.5, module 1: How Git Thinks) · Pro  
**Check:** Graded

## Goal

You will be able to read git status as a report on three named areas and say which one every line describes.

In the lesson: Now walk one file through all three areas, reading the report at every step. Make a new file in the working tree. Nothing else has happened: git has never been told this file exists. Ask for status and git files it under the heading untracked files, which is the heading that means neither of the other two areas. The file is on disk and it is nowhere else. At the bottom git says plainly that nothing has been added to the commit it would build. Read these headings as area names and status stops being noise.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l05/m01l05-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   printf 'draft notes\n' > notes.txt
   git status
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l05-03`.

## Expected output

```text
$ printf 'draft notes\n' > notes.txt
$ git status
On branch main
Untracked files:
  (use "git add <file>..." to include in what will be committed)
	notes.txt

nothing added to commit but untracked files present (use "git add" to track)
```

## How to check

`./check m01l05-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
