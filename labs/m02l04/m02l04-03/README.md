# m02l04-03 · Shaping the list: graph, a count, a format of your own

**Lesson:** [Reading History: log, show And diff](https://learnsome.tech/learn/git-course/m02l04) (lesson 2.4, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to interrogate a repository with log, show and diff, and pick the flag that answers the question you actually have.

In the lesson: Three flags earn their keep immediately. The graph flag draws the parent links down the left: a star for each commit, and lines wherever history splits or joins. This one is a straight line today, so the column is straight, and the all flag would pull in every other branch if there were any. In module three that same command becomes the clearest picture of a merge. The number flag takes a count: give it two and you get the two newest commits. The pretty format flag lets you design the line yourself, here an abbreviated ID, the author date in short form, then the subject.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline --graph --all
   git log --oneline -2
   git log --pretty=format:'%h %ad %s' --date=short -3
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l04-03`.

## Expected output

```text
$ git log --oneline --graph --all
* 31674e8 test: cover the parser
* 2997b23 refactor: rename the parse helper
* 9b5643d fix: handle an empty line in the parser
* bf2d618 feat: add the command line entry point
* c96fe7e feat: add the parser
* e3aabc4 docs: add the readme
$ git log --oneline -2
31674e8 test: cover the parser
2997b23 refactor: rename the parse helper
$ git log --pretty=format:'%h %ad %s' --date=short -3
31674e8 2024-03-06 test: cover the parser
2997b23 2024-03-06 refactor: rename the parse helper
9b5643d 2024-03-05 fix: handle an empty line in the parser
```

## How to check

`./check m02l04-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
