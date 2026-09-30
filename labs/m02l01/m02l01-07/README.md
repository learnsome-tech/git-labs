# m02l01-07 · Taking the first change, leaving the second

**Lesson:** [Staging Deliberately: status, add, add --patch](https://learnsome.tech/learn/git-course/m02l01) (lesson 2.1, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to turn a messy working tree into commits that each say one thing.

In the lesson: Now do it for real. Git offers the first change again, the serving size, and this time the answer is y, for yes. It moves straight on to the second change, the cooling step at the end of the file, and tells you this is the second of two. That one belongs to a different thought, so the answer is n, for no. The session ends there. One edit is now in the index, the other is still only in the working tree, and the file on your disk is exactly as you left it. Nothing was reverted and nothing was lost. You have divided one file into two commits without touching the file.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git add --patch recipes.md
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l01-07`.

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
(1/2) Stage this hunk [y,n,q,a,d,j,J,g,/,e,?]? @@ -9,3 +10,4 @@ Bread
 Mix flour and water.
 
 Bake for an hour.
+Cool on a rack.
(2/2) Stage this hunk [y,n,q,a,d,K,g,/,e,?]? 
```

## How to check

`./check m02l01-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
