# m02l05-06 · Debugging: which rule hid my file, and what is hidden

**Lesson:** [Ignoring Files, And The Tracked File Trap](https://learnsome.tech/learn/git-course/m02l05) (lesson 2.5, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to write ignore patterns that work, and untrack a file you had already committed by mistake.

In the lesson: Two commands turn ignoring from guesswork into something you can debug. Check ignore with the verbose flag answers the question worth asking when a file refuses to appear: which rule did this, and where does it live? Git answers with four fields: the file, the line number, the pattern, and the path itself. Point it at a path inside an ignored directory and it names the directory rule. Point it at a path that is not ignored and it prints nothing at all, which is the answer. The other command is status with the ignored flag, which lists what is being kept from you. Double exclamation marks mark ignored paths, and a wholly ignored directory is one line.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l05/m02l05-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git check-ignore -v debug.log
   git check-ignore -v build/out.o
   git check-ignore -v app.yaml
   git status --short --ignored
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l05-06`.

## Expected output

```text
$ git check-ignore -v debug.log
.gitignore:1:*.log	debug.log
$ git check-ignore -v build/out.o
.gitignore:2:build/	build/out.o
$ git check-ignore -v app.yaml
$ git status --short --ignored
!! build/
!! debug.log
```

## How to check

`./check m02l05-06` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
