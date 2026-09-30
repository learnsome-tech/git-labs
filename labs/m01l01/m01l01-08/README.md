# m01l01-08 · The id is the content, not the file name

**Lesson:** [Why Version Control, And Why Git Won](https://learnsome.tech/learn/git-course/m01l01) (lesson 1.1, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You can say what a version control system stores, why Git's distributed copy makes history a local question, and what Git's integrity claim rests on.

In the lesson: The command that does the naming is git hash-object, and you can point it at any file. Here is the report with one line in it. Hand that file to git hash-object and you get back a long string of hexadecimal: the name git would file this content under. Now here is a second file, with a different name and the same bytes inside it. Hash that one, and the answer is the same ID, character for character. The file name is no part of it. Git files content by what the content is, which is why two people who write the same line meet in the middle without arranging to.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   cat report-final.md
   git hash-object report-final.md
   git hash-object report-really-final.md
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l01-08`.

## Expected output

```text
$ cat report-final.md
Revenue is up four percent.
$ git hash-object report-final.md
4d9e40cf9b756e834b352deecc8268fdd67bebf1
$ git hash-object report-really-final.md
4d9e40cf9b756e834b352deecc8268fdd67bebf1
```

## How to check

`./check m01l01-08` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
