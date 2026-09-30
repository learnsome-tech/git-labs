# m03l04-02 · The fork we are going to remove

**Lesson:** [Rebase: The Same Work, A Different History](https://learnsome.tech/learn/git-course/m03l04) (lesson 3.4, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to rebase a branch, show that the commits are copies, and say when not to do it.

In the lesson: This is the same fork as the last lesson: one commit on each side of a shared starting point, and we are standing on feature. There is the commit they share. Merging this would write a commit with two parents and leave everything else alone. Rebase is going to do something different: it will take the one commit that exists only on feature, work out what it changed, and apply that change on top of the newest commit on main instead. Then it will move the feature label onto the result.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l04/m03l04-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline --graph --all
   git merge-base main feature
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l04-02`.

## Expected output

```text
$ git log --oneline --graph --all
* a1531bb Add the main file
| * b8af5d2 Add the feature file
|/  
* 5a9bfe1 Add notes
$ git merge-base main feature
5a9bfe16534ec50daf8212c6640ef42b1c72010a
```

## How to check

`./check m03l04-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
