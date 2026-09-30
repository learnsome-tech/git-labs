# m02l01-02 · Two unrelated edits, one working tree

**Lesson:** [Staging Deliberately: status, add, add --patch](https://learnsome.tech/learn/git-course/m02l01) (lesson 2.1, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to turn a messy working tree into commits that each say one thing.

In the lesson: Here is a cookbook repository with one commit in it, and two files edited since. The price of sugar was wrong, and a recipe gained a serving size at the top and a cooling step at the bottom. Ask git what it makes of that. It says we are on branch main, lists both files under changes not staged for commit, and finishes by saying no changes added to commit. Read that last line as a statement about you rather than about git. Git is not refusing to commit. It is pointing out that nothing has been chosen yet, that the index is still empty, and that it is waiting for you.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline
   git status
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l01-02`.

## Expected output

```text
$ git log --oneline
47b30fc Add recipes and prices
$ git status
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   prices.md
	modified:   recipes.md
no changes added to commit (use "git add" and/or "git commit -a")
```

## How to check

`./check m02l01-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
