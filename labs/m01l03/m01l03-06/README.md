# m01l03-06 · The repository is the hidden directory, and nothing else

**Lesson:** [A Repository Is A Folder With A Memory](https://learnsome.tech/learn/git-course/m01l03) (lesson 1.3, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You can turn any directory into a repository with git init, name what lives inside the hidden .git directory, and prove that the repository is that directory and nothing else.

In the lesson: Here is the claim, and here is the proof. This cookbook has two commits behind it. Copy the whole folder with cp and the copy gets a hidden directory of its own, so it gets the history too: ask the copy for its log and both commits are there, under the same IDs. Nothing was cloned, and no server was involved. Now go back to the original and delete the hidden directory outright. Both recipes are still on disk, exactly as written, because your files never lived in the database. But git no longer knows this place. Status answers with a fatal error: not a git repository. The folder is ordinary again, and the memory is gone for good.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   cp -r cookbook cookbook-copy
   cd cookbook-copy
   git log --oneline
   cd ../cookbook
   rm -rf .git
   ls
   git status
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l03-06`.

## Expected output

```text
$ cp -r cookbook cookbook-copy
$ cd cookbook-copy
$ git log --oneline
bd21fbc Add the sourdough recipe
1a079fb Add the onion soup recipe
$ cd ../cookbook
$ rm -rf .git
$ ls
bread.md
soup.md
$ git status
fatal: not a git repository (or any of the parent directories): .git
```

## How to check

`./check m01l03-06` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
