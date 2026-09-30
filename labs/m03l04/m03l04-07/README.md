# m03l04-07 · The same work, merged and rebased, side by side

**Lesson:** [Rebase: The Same Work, A Different History](https://learnsome.tech/learn/git-course/m03l04) (lesson 3.4, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to rebase a branch, show that the commits are copies, and say when not to do it.

In the lesson: Here are two repositories that were given identical work and treated differently. The merged one keeps the fork and records the join, so you can see that two things happened at once and when they came together. The rebased one is a straight line, easy to read top to bottom, and it quietly claims the feature was written after the main work rather than alongside it. Neither is wrong. One preserves what happened, the other preserves readability, and teams choose. What you should not do is choose per merge, at random, on a shared branch.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l04/m03l04-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git -C merged log --oneline --graph
   git -C rebased log --oneline --graph
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l04-07`.

## Expected output

```text
$ git -C merged log --oneline --graph
*   a1f6e8f Merge branch 'feature'
|\  
| * d28fbf7 Add the feature file
* | 693a697 Add the main file
|/  
* 5a9bfe1 Add notes
$ git -C rebased log --oneline --graph
* be0e159 Add the feature file
* 693a697 Add the main file
* 5a9bfe1 Add notes
```

## How to check

`./check m03l04-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
