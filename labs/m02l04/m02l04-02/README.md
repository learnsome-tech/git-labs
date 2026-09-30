# m02l04-02 · What plain git log prints, and the oneline habit

**Lesson:** [Reading History: log, show And diff](https://learnsome.tech/learn/git-course/m02l04) (lesson 2.4, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to interrogate a repository with log, show and diff, and pick the flag that answers the question you actually have.

In the lesson: Here is the history this lesson reads: six commits, four files, made over three days by two people. Ask for one commit and read the default shape git chose. A full object ID, the author with their address, the date that author wrote it, then the message, indented underneath. Honest, and nobody browses a history that way. Add the oneline flag and every commit collapses to an abbreviated ID and a subject. Six lines, newest at the top, and that order is git walking the parent links back from HEAD rather than sorting by clock.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log -1
   git log --oneline
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l04-02`.

## Expected output

```text
$ git log -1
commit 31674e8f226eb0981df19b3dee9d610345bee1b2
Author: Ada Lovelace <ada@example.com>
Date:   Wed Mar 6 16:00:00 2024 +0000

    test: cover the parser
$ git log --oneline
31674e8 test: cover the parser
2997b23 refactor: rename the parse helper
9b5643d fix: handle an empty line in the parser
bf2d618 feat: add the command line entry point
c96fe7e feat: add the parser
e3aabc4 docs: add the readme
```

## How to check

`./check m02l04-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
