# m03l02-07 · Detaching on purpose

**Lesson:** [HEAD, And Why Detached HEAD Is Not An Error](https://learnsome.tech/learn/git-course/m03l02) (lesson 3.2, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to say what HEAD points at, detach it deliberately, and keep work made while detached.

In the lesson: Ask for it deliberately, with the detach flag, naming the commit one step back. Git tells you where HEAD is now and gives you the subject line, so you know what you are looking at. Open the file once more: a raw object ID, and no mention of any branch. Status says the same thing in words, HEAD detached at that commit, rather than on branch main. This is how you check out a tagged release or a commit from a bug report. It is an ordinary thing to do.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git switch --detach HEAD~1
   cat .git/HEAD
   git status
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l02-07`.

## Expected output

```text
$ git switch --detach HEAD~1
HEAD is now at 5a9bfe1 Add notes
$ cat .git/HEAD
5a9bfe16534ec50daf8212c6640ef42b1c72010a
$ git status
HEAD detached at 5a9bfe1
nothing to commit, working tree clean
```

## How to check

`./check m03l02-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
