# m03l01-05 · Creating a branch is writing one file

**Lesson:** [A Branch Is A Moving Pointer](https://learnsome.tech/learn/git-course/m03l01) (lesson 3.1, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to create, rename and delete branches, and say exactly what each one is on disk.

In the lesson: Make one. Git says nothing, which is a good sign. List the directory and there are two files now, main and feature. Resolve both names and you get the identical ID, because a new branch starts life pointing at whatever you were standing on. Nothing was copied. Ask how big the new file is and the answer is forty-one bytes: forty characters of hexadecimal and a newline. That is the whole cost of a branch. Note also that creating a branch did not move you onto it. You are still where you were.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git branch feature
   ls .git/refs/heads
   git rev-parse main feature
   wc -c .git/refs/heads/feature
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l01-05`.

## Expected output

```text
$ git branch feature
$ ls .git/refs/heads
feature
main
$ git rev-parse main feature
87a8ebfdf95ba7a0bdcecb51b9e61427e2e59914
87a8ebfdf95ba7a0bdcecb51b9e61427e2e59914
$ wc -c .git/refs/heads/feature
      41 .git/refs/heads/feature
```

## How to check

`./check m03l01-05` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
