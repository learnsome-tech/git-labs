# m01l04-06 · The first commit has no parent

**Lesson:** [What A Commit Really Is](https://learnsome.tech/learn/git-course/m01l04) (lesson 1.4, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You will be able to open a commit object and name every field inside it.

In the lesson: HEAD tilde one means one step back along the parent line. Resolve it and git hands back a full object ID, forty characters of hexadecimal. Open that one and compare it with what you saw before. Tree, author, committer, message, and no parent line at all, because there was nothing before it. That is what git means by a root commit. Chain them together and you have history: each commit naming the one before it, all the way back to a commit that names nobody. Nothing else holds git history together. There is no separate log file.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git rev-parse HEAD~1
   git cat-file -p HEAD~1
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l04-06`.

## Expected output

```text
$ git rev-parse HEAD~1
e06f0668e9542ecc8ff201bda598c587d908b02f
$ git cat-file -p HEAD~1
tree cb59de63f643b907d77937409565d909fe585ef6
author Ada Lovelace <ada@example.com> 1709546400 +0000
committer Ada Lovelace <ada@example.com> 1709546400 +0000

Add notes
```

## How to check

`./check m01l04-06` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
