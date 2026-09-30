# m01l05-07 · Three diffs, because there are three pairs

**Lesson:** [The Three Areas: Working Tree, Index, Repository](https://learnsome.tech/learn/git-course/m01l05) (lesson 1.5, module 1: How Git Thinks) · Pro  
**Check:** Graded

## Goal

You will be able to read git status as a report on three named areas and say which one every line describes.

In the lesson: Three areas means three pairs to compare, and git has a diff for each pair. The file here was staged once and then edited again, so the three answers genuinely differ. Plain diff compares the working tree against the index: one line, the edit you have not staged yet. Diff with the staged flag compares the index against the newest commit: two lines, what you staged and have not committed. Diff against HEAD compares the working tree against the newest commit: three lines, the lot. The stat flag is only there to keep the three answers short enough to read together.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l05/m01l05-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git diff --stat
   git diff --staged --stat
   git diff HEAD --stat
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l05-07`.

## Expected output

```text
$ git diff --stat
 plan.txt | 1 +
 1 file changed, 1 insertion(+)
$ git diff --staged --stat
 plan.txt | 2 ++
 1 file changed, 2 insertions(+)
$ git diff HEAD --stat
 plan.txt | 3 +++
 1 file changed, 3 insertions(+)
```

## How to check

`./check m01l05-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
