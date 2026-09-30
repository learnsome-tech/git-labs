# m02l01-08 · Proof: one hunk chosen, one hunk left behind

**Lesson:** [Staging Deliberately: status, add, add --patch](https://learnsome.tech/learn/git-course/m02l01) (lesson 2.1, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to turn a messy working tree into commits that each say one thing.

In the lesson: Two commands settle whether that worked, and they are the pair you met in the first module. The staged flag compares the index with the last commit, so it shows what you chose: the serving size line, and only that. Plain diff compares the working tree with the index instead, so it shows what is left over. Ask it for a summary with the stat flag and it counts one insertion still waiting, which is the cooling step. Same file, two answers, because there really are two versions of it in play. When you cannot remember which command you want, ask which two areas you are comparing.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git diff --staged
   git diff --stat
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l01-08`.

## Expected output

```text
$ git diff --staged
diff --git a/recipes.md b/recipes.md
index d90bb63..19db8c9 100644
--- a/recipes.md
+++ b/recipes.md
@@ -1,4 +1,5 @@
 Pancakes
+Serves two.
 Mix flour and milk.
 Fry in butter.
$ git diff --stat
 recipes.md | 1 +
 1 file changed, 1 insertion(+)
```

## How to check

`./check m02l01-08` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
