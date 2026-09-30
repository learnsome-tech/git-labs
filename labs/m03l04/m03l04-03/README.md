# m03l04-03 · Rebasing, and watching the id change

**Lesson:** [Rebase: The Same Work, A Different History](https://learnsome.tech/learn/git-course/m03l04) (lesson 3.4, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to rebase a branch, show that the commits are copies, and say when not to do it.

In the lesson: Write down where feature points before anything happens. Now run the rebase, naming the branch you want to sit on top of. Git reports that it rebased and updated the branch. Ask the same question again and the ID is different. Read that carefully, because it is the whole lesson. Your commit was not moved. Commits cannot move: the ID is a hash of the content, and the content includes the parent, and the parent has changed. So git built a new commit with the same change, the same message and the same author, and a different parent.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l04/m03l04-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git rev-parse --short feature
   git rebase main
   git rev-parse --short feature
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l04-03`.

## Expected output

```text
$ git rev-parse --short feature
b8af5d2
$ git rebase main
Rebasing (1/1)Successfully rebased and updated refs/heads/feature.
$ git rev-parse --short feature
836ae39
```

## How to check

`./check m03l04-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
