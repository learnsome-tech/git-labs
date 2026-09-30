# m03l03-02 · A branch that ran ahead while main stood still

**Lesson:** [Merging: Fast Forward Or A Merge Commit](https://learnsome.tech/learn/git-course/m03l03) (lesson 3.3, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to predict whether a merge fast forwards or makes a merge commit, and say why.

In the lesson: Here is the first shape. Two commits were made on feature, and main has not moved since the branch was created. Look at where the two branches point. Now draw it. There is no fork in that picture: it is one straight line, and main is sitting two commits down from the tip. Feature is not a different version of the project. It is the same history with more of it. Nothing on main needs to be reconciled with anything, because nothing on main has happened.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git branch -v
   git log --oneline --graph --all
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l03-02`.

## Expected output

```text
$ git branch -v
  feature 23ab440 Add a third line
* main    5a9bfe1 Add notes
$ git log --oneline --graph --all
* 23ab440 Add a third line
* 6fa2cab Add a second line
* 5a9bfe1 Add notes
```

## How to check

`./check m03l03-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
