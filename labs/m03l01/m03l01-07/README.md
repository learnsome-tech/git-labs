# m03l01-07 · Seeing the shape of it

**Lesson:** [A Branch Is A Moving Pointer](https://learnsome.tech/learn/git-course/m03l01) (lesson 3.1, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to create, rename and delete branches, and say exactly what each one is on disk.

In the lesson: Both branches have since had a commit of their own. Listing branches with the verbose flag gives you each name, the commit it points at, and that commit's subject line, which is usually enough to remember what a branch was for. To draw the shape, ask the log for all branches and add the graph flag. The two lines split at the commit they share. That shared commit is the merge base, and it is the thing merging and rebasing both start from, so it is worth recognising the picture now.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git branch -v
   git log --oneline --graph --all
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l01-07`.

## Expected output

```text
$ git branch -v
  feature 78a12d0 Start the feature
* main    cfbbc66 Carry on with main
$ git log --oneline --graph --all
* cfbbc66 Carry on with main
| * 78a12d0 Start the feature
|/  
* 87a8ebf Add a second line
* e06f066 Add notes
```

## How to check

`./check m03l01-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
