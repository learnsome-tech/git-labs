# m03l04-04 · The fork is gone

**Lesson:** [Rebase: The Same Work, A Different History](https://learnsome.tech/learn/git-course/m03l04) (lesson 3.4, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to rebase a branch, show that the commits are copies, and say when not to do it.

In the lesson: Draw the history and the fork has gone. One straight line, with your work on top of the main work, and no merge commit anywhere. Open the commit underneath yours and it is the main commit, which was not touched and still has its original ID. That is the bargain rebase strikes: the branch you rebased onto is untouched, and every commit that was only on your branch is replaced by a copy. A merge would have kept both lines and added a join. A rebase keeps one line and rewrites your side of it.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l04/m03l04-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline --graph --all
   git cat-file -p HEAD~1
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l04-04`.

## Expected output

```text
$ git log --oneline --graph --all
* 836ae39 Add the feature file
* a1531bb Add the main file
* 5a9bfe1 Add notes
$ git cat-file -p HEAD~1
tree 98dd3f2a0970049f7ec8b277f8e03e1bd47387d0
parent 5a9bfe16534ec50daf8212c6640ef42b1c72010a
author Ada Lovelace <ada@example.com> 1709553600 +0000
committer Ada Lovelace <ada@example.com> 1709553600 +0000

Add the main file
```

## How to check

`./check m03l04-04` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
