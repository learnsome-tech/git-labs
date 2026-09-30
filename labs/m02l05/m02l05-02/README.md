# m02l05-02 · The pattern language, one line at a time

**Lesson:** [Ignoring Files, And The Tracked File Trap](https://learnsome.tech/learn/git-course/m02l05) (lesson 2.5, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to write ignore patterns that work, and untrack a file you had already committed by mistake.

In the lesson: Rather than reciting the pattern language, watch it work against a real repository. Every line does one job. Start with a comment line, because a rule nobody understands gets deleted by somebody eventually. A bare file name matches that name at any depth, so both copies of the notes file go quiet. An extension glob hides everything whose name ends in log. A trailing slash matches a directory, and everything inside it. A leading slash anchors the pattern to the root, so the nested copy of the local override is left alone. Two asterisks stand for any number of directories in between. A leading exclamation mark puts a path back after a broader rule took it away. Ask status for every untracked file: three survive.

## Files

- [`starter/.gitignore`](starter/.gitignore)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l05/m02l05-02/starter`
2. Read `session.sh` the way the lesson builds it:
   - Lines 1: Start with a comment line
   - Lines 2: A bare file name
   - Lines 3: An extension glob
   - Lines 4: A trailing slash matches a directory
   - Lines 5: A leading slash anchors the pattern
   - Lines 6: Two asterisks stand for any number
   - Lines 7: A leading exclamation mark
3. Notes from the lesson:
   - Line 4: directory only: the slash is what makes it a directory rule
   - Line 5: anchored: matches only at the top level, not at any depth
   - Line 6: any number of directories in between, including none
   - Line 7: puts one path back; it must come after the rule it undoes
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l05-02`.

## Expected output

```text
$ git status --short --untracked-files=all
?? .gitignore
?? docs/keep/scratch.md
?? sub/config.local
```

## How to check

`./check m02l05-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
