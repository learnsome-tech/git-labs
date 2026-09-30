# m01l04-03 · The commit, printed in full

**Lesson:** [What A Commit Really Is](https://learnsome.tech/learn/git-course/m01l04) (lesson 1.4, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You will be able to open a commit object and name every field inside it.

In the lesson: Now ask git to print it instead. The p flag is for pretty print, which here means give me the object as it is stored. And there it is, in full. Five pieces of information and a blank line. A tree, a parent, an author with a timestamp, a committer with a timestamp, and then, after the blank line, the message. That is the whole commit. There is no list of changed files, no patch, no plus and minus lines. Everything a commit knows about your code, it knows through that first line, the tree.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l04/m01l04-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git cat-file -p HEAD
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l04-03`.

## Expected output

```text
$ git cat-file -p HEAD
tree 5af90d6eca5bea5adadfff440e5adbb9eab47931
parent e06f0668e9542ecc8ff201bda598c587d908b02f
author Ada Lovelace <ada@example.com> 1709550000 +0000
committer Ada Lovelace <ada@example.com> 1709550000 +0000

Add a second line
```

## How to check

`./check m01l04-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
