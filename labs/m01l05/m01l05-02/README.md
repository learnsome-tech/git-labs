# m01l05-02 · Where each of the three areas lives on disk

**Lesson:** [The Three Areas: Working Tree, Index, Repository](https://learnsome.tech/learn/git-course/m01l05) (lesson 1.5, module 1: How Git Thinks) · Pro  
**Check:** Graded

## Goal

You will be able to read git status as a report on three named areas and say which one every line describes.

In the lesson: None of this is abstract, so look at all three inside one repository that already has a commit in it. List the folder: the files on disk are just files, with nothing special about them at all. Now list the index. It is one file, dot git slash index, and that is the whole staging area. Not a folder, not a second copy of your project: one file. Finally, ask the object database what it is holding. Three objects, sorted by ID: a tree, the commit itself, and the blob holding the contents of the file.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l05/m01l05-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   ls
   ls .git/index
   git cat-file --batch-check --batch-all-objects
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l05-02`.

## Expected output

```text
$ ls
plan.txt
$ ls .git/index
.git/index
$ git cat-file --batch-check --batch-all-objects
9e5935a49d7bd3c4d2f4be5393263b4f130ddd1c tree 36
9ea0ca47d8f2eee52dcc97adbbbd4be81350a7b0 commit 173
f1017fceccdcd29933ea93fe20007d55cbc95317 blob 15
```

## How to check

`./check m01l05-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
