# m01l03-05 · git status on a repository with no commits

**Lesson:** [A Repository Is A Folder With A Memory](https://learnsome.tech/learn/git-course/m01l03) (lesson 1.3, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You can turn any directory into a repository with git init, name what lives inside the hidden .git directory, and prove that the repository is that directory and nothing else.

In the lesson: Status is how you ask git what it thinks right now, and on a fresh repository the answer is short enough to read line by line. On branch main: that is the branch HEAD names, and it does not exist yet, because a branch begins to exist only when it has a commit to point at. No commits yet: the history is empty, and git says so rather than leaving you to guess. Nothing to commit, followed by advice to create or copy files and use git add to track them. Files do not join a repository by sitting in the directory; you hand them over. Ask for the log and git puts it more bluntly.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git status
   git log --oneline
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l03-05`.

## Expected output

```text
$ git status
On branch main

No commits yet

nothing to commit (create/copy files and use "git add" to track)
$ git log --oneline
fatal: your current branch 'main' does not have any commits yet
```

## How to check

`./check m01l03-05` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
