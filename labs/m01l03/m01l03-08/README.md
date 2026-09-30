# m01l03-08 · Where the repository ends, and which one you are in

**Lesson:** [A Repository Is A Folder With A Memory](https://learnsome.tech/learn/git-course/m01l03) (lesson 1.3, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You can turn any directory into a repository with git init, name what lives inside the hidden .git directory, and prove that the repository is that directory and nothing else.

In the lesson: One question you will keep asking for the rest of your career: which repository am I in? Git will tell you. Move down two levels into a subdirectory and status still works, naming the untracked file beside you, because git walks up the directory tree until it meets a hidden directory and treats whatever holds it as the root. To see that root, ask for it: git rev parse with the show toplevel flag prints the absolute path this repository covers. Everything under it belongs here, and everything outside does not. The show prefix flag answers the other half, telling you where inside it you are standing.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   cd recipes/sauces
   git status --short
   git rev-parse --show-toplevel
   git rev-parse --show-prefix
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l03-08`.

## Expected output

```text
$ cd recipes/sauces
$ git status --short
?? bearnaise.md
$ git rev-parse --show-toplevel
/tmp/cookbook
$ git rev-parse --show-prefix
recipes/sauces/
```

## How to check

`./check m01l03-08` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
