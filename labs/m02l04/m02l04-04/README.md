# m02l04-04 · Which files a commit touched, and when one was last edited

**Lesson:** [Reading History: log, show And diff](https://learnsome.tech/learn/git-course/m02l04) (lesson 2.4, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to interrogate a repository with log, show and diff, and pick the flag that answers the question you actually have.

In the lesson: Most of the time your question is about files, not lines. The stat flag adds a summary to each commit: the files it touched, a bar for how much of each, and a total. Point it one commit back from the tip and you see that the rename moved two files, not one. The name status flag drops the arithmetic and gives a letter per file: A for added, M for modified, D for deleted, R for renamed. And a path after a double dash turns the whole log into a question about that file. When was the parser last edited, and in which commits? Three of the six.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline --stat -1 HEAD~1
   git log --oneline --name-status -1
   git log --oneline -- parser.py
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l04-04`.

## Expected output

```text
$ git log --oneline --stat -1 HEAD~1
2997b23 refactor: rename the parse helper
 cli.py    | 4 ++--
 parser.py | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)
$ git log --oneline --name-status -1
31674e8 test: cover the parser
A	test_parser.py
$ git log --oneline -- parser.py
2997b23 refactor: rename the parse helper
9b5643d fix: handle an empty line in the parser
c96fe7e feat: add the parser
```

## How to check

`./check m02l04-04` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
