# m01l02-08 · Work email here, personal email there

**Lesson:** [Installing Git, And Telling It Who You Are](https://learnsome.tech/learn/git-course/m01l02) (lesson 1.2, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You will be able to install git, set the identity it writes into commits, and say which config file an answer came from.

In the lesson: The everyday reason the local level exists is email. Plenty of people commit to their employer's repositories with a work address and to their own projects with a personal one, and a single global setting cannot be both. So here are two repositories side by side. In the work one, set the user email locally to the company address. Ask the work repository and you get the company address. Ask the personal one, where nothing local was set, and you get the address from your home directory. Check where the answer came from and git says global. Two answers, nothing to remember when you commit.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git -C work config user.email ada@company.example.com
   git -C work config user.email
   git -C personal config user.email
   git -C personal config --show-scope user.email
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l02-08`.

## Expected output

```text
$ git -C work config user.email ada@company.example.com
$ git -C work config user.email
ada@company.example.com
$ git -C personal config user.email
ada@example.com
$ git -C personal config --show-scope user.email
global	ada@example.com
```

## How to check

`./check m01l02-08` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
