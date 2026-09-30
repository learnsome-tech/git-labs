# m01l02-07 · Four settings worth having on the first day

**Lesson:** [Installing Git, And Telling It Who You Are](https://learnsome.tech/learn/git-course/m01l02) (lesson 1.2, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You will be able to install git, set the identity it writes into commits, and say which config file an answer came from.

In the lesson: Four more settings earn their place on the first day, and each has a reason. The default branch setting names the branch a new repository starts on, so you get main rather than the older name. The pull rebase setting decides what a pull does when both sides have moved on; choosing deliberately beats finding out during a merge. The core editor setting is the program git opens when it wants a commit message, so point it at an editor you know how to leave. An alias is a short name for a longer command. Read them back rather than believing me: the editor is there, and so is the alias.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git config --global init.defaultBranch main
   git config --global pull.rebase false
   git config --global core.editor 'code --wait'
   git config --global alias.lg 'log --oneline --graph'
   git config --get core.editor
   git config --get-regexp '^alias'
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l02-07`.

## Expected output

```text
$ git config --global init.defaultBranch main
$ git config --global pull.rebase false
$ git config --global core.editor 'code --wait'
$ git config --global alias.lg 'log --oneline --graph'
$ git config --get core.editor
code --wait
$ git config --get-regexp '^alias'
alias.lg log --oneline --graph
```

## How to check

`./check m01l02-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
