# m01l02-06 · System, then global, then local: the last wins

**Lesson:** [Installing Git, And Telling It Who You Are](https://learnsome.tech/learn/git-course/m01l02) (lesson 1.2, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You will be able to install git, set the identity it writes into commits, and say which config file an answer came from.

In the lesson: Git reads its settings from three files in a fixed order, and the later one wins. System belongs to the whole machine; global belongs to you; local belongs to this one repository. Watch it happen. Inside a repository, asking for the user name gives the global answer we set a moment ago. Now set a different name with the local flag, which writes into the config file inside this repository instead of your home directory. Ask again and the answer has changed, with the global file untouched. When you want to know why, add show origin: git names the file it read, and here that file is the project's own.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git config user.name
   git config --local user.name 'Ada L Byron'
   git config user.name
   git config --show-origin user.name
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l02-06`.

## Expected output

```text
$ git config user.name
Ada Lovelace
$ git config --local user.name 'Ada L Byron'
$ git config user.name
Ada L Byron
$ git config --show-origin user.name
file:.git/config	Ada L Byron
```

## How to check

`./check m01l02-06` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
