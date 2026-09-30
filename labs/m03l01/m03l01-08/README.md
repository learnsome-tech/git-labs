# m03l01-08 · Renaming and deleting

**Lesson:** [A Branch Is A Moving Pointer](https://learnsome.tech/learn/git-course/m03l01) (lesson 3.1, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to create, rename and delete branches, and say exactly what each one is on disk.

In the lesson: Two more operations and the vocabulary is complete. Rename it with the move flag, giving the old name and the new one. List the branches and the new name is there; on disk, one file was renamed. Now delete it with the lower case d. Git refuses, and read the refusal carefully: it says the branch is not fully merged, which means it points at a commit no other branch can reach, so deleting the name would leave that work with nothing pointing at it. If you meant it, insist with the upper case D. Git deletes the name and prints the ID it was holding, so you can still get back.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git branch -m feature notes-tidy
   git branch
   git branch -d notes-tidy
   git branch -D notes-tidy
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l01-08`.

## Expected output

```text
$ git branch -m feature notes-tidy
$ git branch
* main
  notes-tidy
$ git branch -d notes-tidy
error: the branch 'notes-tidy' is not fully merged
$ git branch -D notes-tidy
Deleted branch notes-tidy (was b005bc5).
```

## How to check

`./check m03l01-08` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
