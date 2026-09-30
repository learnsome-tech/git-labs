# m02l01-04 · The short report, and its two columns

**Lesson:** [Staging Deliberately: status, add, add --patch](https://learnsome.tech/learn/git-course/m02l01) (lesson 2.1, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to turn a messy working tree into commits that each say one thing.

In the lesson: The long report is friendly for a week and tiring after that, so here is the form you will use every day. The short flag gives one line per file, with two columns of letters in front of the name. The left column is the index. The right column is the working tree. A letter on the left means staged, a letter on the right means not staged, and a file can carry a letter in both. Two question marks mean git has never heard of this file, which is what it says about the shopping list. Add the branch flag and the branch you are on arrives above the same compact list.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git status --short
   git status --short --branch
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l01-04`.

## Expected output

```text
$ git status --short
M  prices.md
 M recipes.md
?? shopping.md
$ git status --short --branch
## main
M  prices.md
 M recipes.md
?? shopping.md
```

## How to check

`./check m02l01-04` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
