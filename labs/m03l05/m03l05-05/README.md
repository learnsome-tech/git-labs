# m03l05-05 · Soft: keep everything, just unmake the commit

**Lesson:** [Undoing: restore, reset, revert And stash](https://learnsome.tech/learn/git-course/m03l05) (lesson 3.5, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to choose the right undo command by naming which area or pointer you want to change.

In the lesson: Two commits. A soft reset one step back moves the branch pointer to the older commit and stops there. The log now shows one commit, because the branch no longer points at the newer one. But look at status: the work is staged, exactly as it was a moment before you committed it. Nothing was lost, and the commit you unmade is still in the object database. This is the reset to reach for when you committed too early, or committed on the wrong branch and want to put the change somewhere else.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline
   git reset --soft HEAD~1
   git log --oneline
   git status --short
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l05-05`.

## Expected output

```text
$ git log --oneline
6fa2cab Add a second line
5a9bfe1 Add notes
$ git reset --soft HEAD~1
$ git log --oneline
5a9bfe1 Add notes
$ git status --short
M  notes.txt
```

## How to check

`./check m03l05-05` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
