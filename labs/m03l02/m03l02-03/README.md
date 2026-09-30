# m03l02-03 · Switching branches rewrites HEAD

**Lesson:** [HEAD, And Why Detached HEAD Is Not An Error](https://learnsome.tech/learn/git-course/m03l02) (lesson 3.2, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to say what HEAD points at, detach it deliberately, and keep work made while detached.

In the lesson: Read it before the switch: main. Now switch branches. Read it again, and the path inside has changed to feature. That is most of what switching does. It rewrites this one file, and then makes your working tree match the commit that the new branch points at. Switch back and the file says main again. So when you commit, git reads HEAD, finds the branch name, and overwrites that branch file with the new ID. Three files, and you have watched all three of them change.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l02/m03l02-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   cat .git/HEAD
   git switch feature
   cat .git/HEAD
   git switch main
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l02-03`.

## Expected output

```text
$ cat .git/HEAD
ref: refs/heads/main
$ git switch feature
Switched to branch 'feature'
$ cat .git/HEAD
ref: refs/heads/feature
$ git switch main
Switched to branch 'main'
```

## How to check

`./check m03l02-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
