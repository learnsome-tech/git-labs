# m03l03-07 · A merge commit has two parents

**Lesson:** [Merging: Fast Forward Or A Merge Commit](https://learnsome.tech/learn/git-course/m03l03) (lesson 3.3, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to predict whether a merge fast forwards or makes a merge commit, and say why.

In the lesson: Open the merge commit with the same command you used in module one. Everything is where you expect: a tree, two identity lines, a message. And then the line that makes it a merge. There are two parent lines instead of one. That is the entire difference between a merge commit and an ordinary commit. Git did not invent a new kind of object. It wrote an ordinary commit that happens to name two ancestors, and every tool that draws a fork in your history is reading exactly that.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git cat-file -p HEAD
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l03-07`.

## Expected output

```text
$ git cat-file -p HEAD
tree 7ba81e0b106aee605de545aa089ce4f0c92ae65d
parent a1531bb0f746e420cfdec1405c8380ca57182e43
parent b8af5d2b2eae2f0007e9bade475f35ce4228b5c3
author Ada Lovelace <ada@example.com> 1709557200 +0000
committer Ada Lovelace <ada@example.com> 1709557200 +0000

Merge branch 'feature'
```

## How to check

`./check m03l03-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
