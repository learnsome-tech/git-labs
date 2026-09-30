# m02l04-06 · The patch flag: the change itself, one file at a time

**Lesson:** [Reading History: log, show And diff](https://learnsome.tech/learn/git-course/m02l04) (lesson 2.4, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to interrogate a repository with log, show and diff, and pick the flag that answers the question you actually have.

In the lesson: When a summary is not enough, the patch flag prints the change each commit introduced, which is log and diff turning out to be one tool in two hats. Unbounded it is more than anyone reads, so pair it with a count and a path: the newest commit that touched the parser, as a patch. Read the hunk header first, because it names the lines this change covers on each side. Then one line removed, one line added, and the unchanged lines around them for context, so you can see where in the file you are standing.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline --patch -1 -- parser.py
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l04-06`.

## Expected output

```text
$ git log --oneline --patch -1 -- parser.py
2997b23 refactor: rename the parse helper
diff --git a/parser.py b/parser.py
index 02aa4ca..0f07c7d 100644
--- a/parser.py
+++ b/parser.py
@@ -1,4 +1,4 @@
-def split_line(line):
+def parse_line(line):
     if not line:
         return []
     return line.split(":", 1)
```

## How to check

`./check m02l04-06` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
