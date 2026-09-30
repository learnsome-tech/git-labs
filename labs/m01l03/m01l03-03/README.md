# m01l03-03 · The hidden directory sitting beside your files

**Lesson:** [A Repository Is A Folder With A Memory](https://learnsome.tech/learn/git-course/m01l03) (lesson 1.3, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You can turn any directory into a repository with git init, name what lives inside the hidden .git directory, and prove that the repository is that directory and nothing else.

In the lesson: List the directory and it looks the way it always did: your own files, nothing else. Git has added nothing you can see. Now list it again with the a flag, which asks for the entries whose names begin with a dot. There it is, dot git, sitting beside your work. That leading dot is the whole reason it stays out of sight: your shell and your editor skip such names unless you ask for them. So the project you look at every day and the database that records it are two neighbours in one directory, and only one of the two is ever in your way.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   ls
   ls -a
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l03-03`.

## Expected output

```text
$ ls
README.md
pantry.txt
$ ls -a
.
..
.git
README.md
pantry.txt
```

## How to check

`./check m01l03-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
