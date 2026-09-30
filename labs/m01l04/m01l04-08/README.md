# m01l04-08 · Rebuilding the id from the text

**Lesson:** [What A Commit Really Is](https://learnsome.tech/learn/git-course/m01l04) (lesson 1.4, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You will be able to open a commit object and name every field inside it.

In the lesson: First, the ID git holds for the latest commit. Now feed that text back through the hashing command, telling it the text is a commit. The same ID comes out. The ID really is nothing but a fingerprint of those few lines. Now save the text to a file, change one letter of the message from lower case to upper case, and hash it again. A completely different ID. One letter. This is what people mean when they say git is content addressed, and it is why a repository can tell you it has been tampered with.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git rev-parse HEAD
   git cat-file -p HEAD | git hash-object -t commit --stdin
   git cat-file -p HEAD > c.txt
   sed s/second/SECOND/ c.txt | git hash-object -t commit --stdin
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l04-08`.

## Expected output

```text
$ git rev-parse HEAD
87a8ebfdf95ba7a0bdcecb51b9e61427e2e59914
$ git cat-file -p HEAD | git hash-object -t commit --stdin
87a8ebfdf95ba7a0bdcecb51b9e61427e2e59914
$ git cat-file -p HEAD > c.txt
$ sed s/second/SECOND/ c.txt | git hash-object -t commit --stdin
c2c149bd80d5048bf251f9d7ec85c893732e931b
```

## How to check

`./check m01l04-08` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
