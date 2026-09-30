# m03l05-09 · Reverting a commit that others already have

**Lesson:** [Undoing: restore, reset, revert And stash](https://learnsome.tech/learn/git-course/m03l05) (lesson 3.5, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to choose the right undo command by naming which area or pointer you want to change.

In the lesson: Revert the top commit, taking the message git offers rather than editing it. Git reports what it made, and it made a commit. There are three commits now, not one: the good one, the broken one, and a third whose whole job is to undo the second. The file is back to what it was. Notice that the history got longer rather than shorter, and that is the point. Anybody who pulled the broken commit still has it, still has a history that matches yours, and gets the fix as an ordinary update.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-09/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git revert --no-edit HEAD
   git log --oneline
   cat notes.txt
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l05-09`.

## Expected output

```text
$ git revert --no-edit HEAD
[main 714823a] Revert "Add the broken line"
 Date: Mon Mar 4 12:00:00 2024 +0000
 1 file changed, 1 deletion(-)
$ git log --oneline
714823a Revert "Add the broken line"
0f0d3ff Add the broken line
8e58f21 Add notes
$ cat notes.txt
the good line
```

## How to check

`./check m03l05-09` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
