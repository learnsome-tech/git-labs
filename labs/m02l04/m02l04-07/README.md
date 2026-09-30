# m02l04-07 · Show: one commit, and one file as it was then

**Lesson:** [Reading History: log, show And diff](https://learnsome.tech/learn/git-course/m02l04) (lesson 2.4, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to interrogate a repository with log, show and diff, and pick the flag that answers the question you actually have.

In the lesson: Log is about the list. Show is about one thing, and given a commit it prints that commit whole: header, message and patch together. Show with the stat flag keeps it to a summary, and the name I handed it deserves a pause. HEAD tilde two means two commits back from where I stand, so no ID was copied at all. Now the part that saves the most time: give show a revision, a colon and a path, and it prints that file exactly as it stood in that commit. No checkout, nothing to undo afterwards. Here the helper still wears its old name.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l04/m02l04-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git show --stat HEAD~2
   git show HEAD~2:parser.py
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l04-07`.

## Expected output

```text
$ git show --stat HEAD~2
commit 9b5643df05d0b913ad9bc4ef654271925b70bf1a
Author: Ada Lovelace <ada@example.com>
Date:   Tue Mar 5 14:00:00 2024 +0000

    fix: handle an empty line in the parser

 parser.py | 2 ++
 1 file changed, 2 insertions(+)
$ git show HEAD~2:parser.py
def split_line(line):
    if not line:
        return []
    return line.split(":", 1)
```

## How to check

`./check m02l04-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
