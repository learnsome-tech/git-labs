# m02l01-06 · Opening a patch session, and leaving with q

**Lesson:** [Staging Deliberately: status, add, add --patch](https://learnsome.tech/learn/git-course/m02l01) (lesson 2.1, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to turn a messy working tree into commits that each say one thing.

In the lesson: The prices fix is committed now, and what is left is one file holding two edits that have nothing to do with each other: a serving size near the top, and a cooling step at the bottom. A path is too blunt an instrument for that. The patch flag walks you through the file one change at a time instead. Git prints the first change, tells you it is the first of two, and offers a row of single letter answers. Answer with q, for quit, and the session stops there having staged nothing at all. Status confirms it. So that is the safe way to look: open a session, read what git thinks your changes are, and leave.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git add --patch recipes.md
   git status --short
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l01-06`.

## Expected output

```text
$ git add --patch recipes.md
diff --git a/recipes.md b/recipes.md
index d90bb63..d1003f7 100644
--- a/recipes.md
+++ b/recipes.md
@@ -1,4 +1,5 @@
 Pancakes
+Serves two.
 Mix flour and milk.
 Fry in butter.
(1/2) Stage this hunk [y,n,q,a,d,k,K,j,J,g,/,e,p,P,?]?
$ git status --short
 M recipes.md
```

## How to check

`./check m02l01-06` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
