# m03l05-10 · Stash: put it down, pick it up

**Lesson:** [Undoing: restore, reset, revert And stash](https://learnsome.tech/learn/git-course/m03l05) (lesson 3.5, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to choose the right undo command by naming which area or pointer you want to change.

In the lesson: The last one is not an undo at all, it is a shelf. You are half way through something and an urgent fix arrives. Put it down: git stash takes your uncommitted work, saves it, and gives you a clean tree, which is what you need before switching branches. Do the urgent thing, come back, and list what is on the shelf. Then pick it up again with pop, which reapplies the work and removes it from the list. Stash entries are easy to forget about, so check the list occasionally rather than treating it as storage.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-10/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git stash
   git status --short
   git stash list
   git stash pop
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l05-10`.

## Expected output

```text
$ git stash
Saved working directory and index state WIP on main: 5a9bfe1 Add notes
$ git status --short
$ git stash list
stash@{0}: WIP on main: 5a9bfe1 Add notes
$ git stash pop
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   notes.txt

no changes added to commit (use "git add" and/or "git commit -a")
Dropped refs/stash@{0} (0fd70f4aaacc3e093c628dfdd20caa22a5a1290f)
```

## How to check

`./check m03l05-10` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
