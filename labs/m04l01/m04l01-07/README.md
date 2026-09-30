# m04l01-07 · Rename it, and nothing breaks

**Lesson:** [What A Remote Actually Is](https://learnsome.tech/learn/git-course/m04l01) (lesson 4.1, module 4: Remotes) · Pro  
**Check:** Graded

## Goal

You will be able to say what a remote is, attach one to a repository, and read back everything git knows about it.

In the lesson: Test the claim. This repository has a remote called origin, so rename it, with the rename subcommand, to hub. Ask for the list and the locations are unchanged; only the word in front of them is different. Git has also rewritten your remote tracking refs to match, so what was origin slash main is now hub slash main, and nothing was lost in the move. Now point the same name somewhere else, with set URL, at a second bare repository standing by. Read it once more: the name stayed and the location moved. A remote is a name and a location. You are free to change either one whenever it suits you.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l01/m04l01-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git remote rename origin hub
   git remote -v
   git branch -r
   git remote set-url hub ../mirror.git
   git remote -v
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m04l01-07`.

## Expected output

```text
$ git remote rename origin hub
$ git remote -v
hub	../server.git (fetch)
hub	../server.git (push)
$ git branch -r
  hub/main
$ git remote set-url hub ../mirror.git
$ git remote -v
hub	../mirror.git (fetch)
hub	../mirror.git (push)
```

## How to check

`./check m04l01-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
