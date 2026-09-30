# m01l05-04 · Step two: add copies it into the index

**Lesson:** [The Three Areas: Working Tree, Index, Repository](https://learnsome.tech/learn/git-course/m01l05) (lesson 1.5, module 1: How Git Thinks) · Pro  
**Check:** Graded

## Goal

You will be able to read git status as a report on three named areas and say which one every line describes.

In the lesson: Run git add on that file and ask again. The heading changes. Untracked has gone, and in its place is changes to be committed, with the file listed as a new file. That heading is the index, always. Anything under changes to be committed is content that has been copied into the staging area and will go into the next commit exactly as it stands there. Git even offers the way back: restore with the staged flag would take it out again. Nothing has been committed. The object database has not gained a commit; the index has gained an entry.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l05/m01l05-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git add notes.txt
   git status
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l05-04`.

## Expected output

```text
$ git add notes.txt
$ git status
On branch main
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	new file:   notes.txt
```

## How to check

`./check m01l05-04` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
