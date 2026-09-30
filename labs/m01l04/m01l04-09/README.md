# m01l04-09 · The same change made twice is two commits

**Lesson:** [What A Commit Really Is](https://learnsome.tech/learn/git-course/m01l04) (lesson 1.4, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You will be able to open a commit object and name every field inside it.

In the lesson: One more consequence, and it catches people out. Here are two repositories where somebody made the same file with the same contents and the same message. Ask each for its tree and you get identical trees, because the content is identical and content decides the ID. Now ask each for its commit. Different. The commits differ because the timestamps differ, and the timestamp is part of the text being hashed. Two people who do the same work do not get the same commit, which is exactly why merging is about history and not about comparing identifiers.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-09/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git -C one rev-parse 'HEAD^{tree}'
   git -C two rev-parse 'HEAD^{tree}'
   git -C one rev-parse HEAD
   git -C two rev-parse HEAD
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l04-09`.

## Expected output

```text
$ git -C one rev-parse 'HEAD^{tree}'
2e81171448eb9f2ee3821e3d447aa6b2fe3ddba1
$ git -C two rev-parse 'HEAD^{tree}'
2e81171448eb9f2ee3821e3d447aa6b2fe3ddba1
$ git -C one rev-parse HEAD
3c07fc552ba7b3cc0727d78c095e92e96312cedf
$ git -C two rev-parse HEAD
d431bcb2c44387394798dd2d770d487207d5a2e7
```

## How to check

`./check m01l04-09` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
