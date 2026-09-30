# m03l05-03 · Taking something back out of the index

**Lesson:** [Undoing: restore, reset, revert And stash](https://learnsome.tech/learn/git-course/m03l05) (lesson 3.5, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to choose the right undo command by naming which area or pointer you want to change.

In the lesson: The same command has a second job. Here the change is staged and ready to be committed. Add the staged flag and git copies the file from the last commit back into the index, which takes it out of the next commit without touching what you wrote. Look at the two letter code: the change is still there, in the same place, no longer staged. One command, two areas, and the flag says which. If you want both at once there is a worktree flag as well, and that throws the edit away too.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git status --short
   git restore --staged notes.txt
   git status --short
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l05-03`.

## Expected output

```text
$ git status --short
M  notes.txt
$ git restore --staged notes.txt
$ git status --short
 M notes.txt
```

## How to check

`./check m03l05-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
