# m03l05-02 · Throwing away an edit you have not committed

**Lesson:** [Undoing: restore, reset, revert And stash](https://learnsome.tech/learn/git-course/m03l05) (lesson 3.5, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to choose the right undo command by naming which area or pointer you want to change.

In the lesson: Start with the easy one. There is one modified file, changed but not staged and not committed. To throw that change away, restore it: name the path, and git overwrites your copy with the version in the index. Status says nothing at all, which is what a clean tree looks like. Read the file itself and the regrettable line has gone. Say this part out loud before you use it: that edit was never committed, so nothing in git remembers it, and no command will bring it back. Restore is the one undo in this lesson that genuinely destroys work.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l05/m03l05-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git status --short
   git restore notes.txt
   git status --short
   cat notes.txt
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l05-02`.

## Expected output

```text
$ git status --short
 M notes.txt
$ git restore notes.txt
$ git status --short
$ cat notes.txt
the good line
```

## How to check

`./check m03l05-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
