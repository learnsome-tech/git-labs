# m04l01-05 · Asking what is actually over there

**Lesson:** [What A Remote Actually Is](https://learnsome.tech/learn/git-course/m04l01) (lesson 4.1, module 4: Remotes) · Pro  
**Check:** Graded

## Goal

You will be able to say what a remote is, attach one to a repository, and read back everything git knows about it.

In the lesson: Two commands answer the question of what is actually over there. Ask the remote directly, with ls remote, and git opens the connection, reads the refs the other side is willing to show, and prints an ID and a ref name for each of them. Nothing at all is copied into your repository. The fuller answer comes from show, which reads that same list and then lines it up against your own configuration: which branch the remote calls its head, which of your branches it tracks, and what a pull and a push would do. Both of these speak to the other end, so both are as slow as the connection is.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l01/m04l01-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git ls-remote origin
   git remote show origin
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m04l01-05`.

## Expected output

```text
$ git ls-remote origin
0000000000000000000000000000000000000000	HEAD
0000000000000000000000000000000000000000	refs/heads/main
$ git remote show origin
* remote origin
```

## How to check

`./check m04l01-05` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
