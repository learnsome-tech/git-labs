# m03l02-08 · Committing while detached, and being warned

**Lesson:** [HEAD, And Why Detached HEAD Is Not An Error](https://learnsome.tech/learn/git-course/m03l02) (lesson 3.2, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to say what HEAD points at, detach it deliberately, and keep work made while detached.

In the lesson: So make a commit here, an experiment, and then walk away from it: switch back to main without doing anything else. Read what git prints instead of scrolling past it. It says you are leaving a commit behind, not connected to any of your branches. It shows you the commit, with its abbreviated ID and its subject. Then it tells you precisely how to keep it, giving you the command with the ID already filled in, and only then says it switched. That is not an error message. That is a receipt.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   printf 'an experiment\n' >> notes.txt
   git commit -q -am 'Try something out'
   git switch main
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l02-08`.

## Expected output

```text
$ printf 'an experiment\n' >> notes.txt
$ git commit -q -am 'Try something out'
$ git switch main
Warning: you are leaving 1 commit behind, not connected to
any of your branches:

  ac70779 Try something out

If you want to keep it by creating a new branch, this may be a good time
to do so with:

 git branch <new-branch-name> ac70779

Switched to branch 'main'
```

## How to check

`./check m03l02-08` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
