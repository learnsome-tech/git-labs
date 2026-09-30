# m02l04-09 · Between two commits, in two dots and in three

**Lesson:** [Reading History: log, show And diff](https://learnsome.tech/learn/git-course/m02l04) (lesson 2.4, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to interrogate a repository with log, show and diff, and pick the flag that answers the question you actually have.

In the lesson: Watch those spellings against real commits. Two names with a space between them: what changed going from the older to the newer, summarised by file and by line count. The same pair with two dots asks the same question and gets the same answer, so the dots are a convenience and nothing deeper. Now three dots. It prints the same thing again, and that is no accident: this history is a straight line, so the merge base of the pair is the older one. Once a branch has diverged the answers part company, and that gap is the one everybody meets in a first pull request. With no arguments at all, diff is back to the working tree.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-09/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git diff --stat HEAD~4 HEAD~2
   git diff --name-status HEAD~4..HEAD~2
   git diff --name-status HEAD~4...HEAD~2
   git diff --stat
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l04-09`.

## Expected output

```text
$ git diff --stat HEAD~4 HEAD~2
 cli.py    | 3 +++
 parser.py | 2 ++
 2 files changed, 5 insertions(+)
$ git diff --name-status HEAD~4..HEAD~2
A	cli.py
M	parser.py
$ git diff --name-status HEAD~4...HEAD~2
A	cli.py
M	parser.py
$ git diff --stat
 README.md | 1 +
 1 file changed, 1 insertion(+)
```

## How to check

`./check m02l04-09` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
