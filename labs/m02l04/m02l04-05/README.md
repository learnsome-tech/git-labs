# m02l04-05 · Filtering: dates, people, words, and a vanished string

**Lesson:** [Reading History: log, show And diff](https://learnsome.tech/learn/git-course/m02l04) (lesson 2.4, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to interrogate a repository with log, show and diff, and pick the flag that answers the question you actually have.

In the lesson: Now stop scrolling and start filtering. The since and until flags take dates and keep what falls between them, which answers what happened in a day or a week. The author flag matches whoever wrote the change rather than whoever committed it, and one commit here was written by somebody else. The grep flag searches the messages, so a convention in your subject lines becomes a query. Then the pickaxe, the capital S flag: hand it a string and it shows only the commits where the number of times that string appears changed. Three of them here: where the helper arrived, where it was used, and where it left.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline --since=2024-03-05 --until=2024-03-06
   git log --oneline --author=Hopper
   git log --oneline --grep=parser
   git log --oneline -S split_line
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l04-05`.

## Expected output

```text
$ git log --oneline --since=2024-03-05 --until=2024-03-06
9b5643d fix: handle an empty line in the parser
bf2d618 feat: add the command line entry point
$ git log --oneline --author=Hopper
bf2d618 feat: add the command line entry point
$ git log --oneline --grep=parser
31674e8 test: cover the parser
9b5643d fix: handle an empty line in the parser
c96fe7e feat: add the parser
$ git log --oneline -S split_line
2997b23 refactor: rename the parse helper
bf2d618 feat: add the command line entry point
c96fe7e feat: add the parser
```

## How to check

`./check m02l04-05` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. undefined A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
