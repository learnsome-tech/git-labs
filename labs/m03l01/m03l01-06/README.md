# m03l01-06 · Switching, and then diverging

**Lesson:** [A Branch Is A Moving Pointer](https://learnsome.tech/learn/git-course/m03l01) (lesson 3.1, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to create, rename and delete branches, and say exactly what each one is on disk.

In the lesson: To move onto it, use git switch. Git confirms the move in one line. Now make a commit here, quietly this time, and resolve both names again. They differ. Feature has moved on and main has not, because only the branch you are standing on moves when you commit. The two branches have diverged, which sounds dramatic and is nothing more than two files holding two different IDs. Exactly how git knows which branch you are standing on is the next lesson, and it is one more small file.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git switch feature
   printf 'a feature line\n' >> notes.txt
   git commit -q -am 'Start the feature'
   git rev-parse main feature
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l01-06`.

## Expected output

```text
$ git switch feature
Switched to branch 'feature'
$ printf 'a feature line\n' >> notes.txt
$ git commit -q -am 'Start the feature'
$ git rev-parse main feature
87a8ebfdf95ba7a0bdcecb51b9e61427e2e59914
78a12d096135d25b2784eeabc88d7a237ca2c064
```

## How to check

`./check m03l01-06` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
