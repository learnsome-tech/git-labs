# m01l02-04 · Telling git who you are, once per machine

**Lesson:** [Installing Git, And Telling It Who You Are](https://learnsome.tech/learn/git-course/m01l02) (lesson 1.2, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You will be able to install git, set the identity it writes into commits, and say which config file an answer came from.

In the lesson: Curing that takes two commands, run once on a machine rather than once per project. The global flag means: keep this in my home directory, for every repository I touch from here on. Set the user name to the name you want beside your work, and the user email to an address you actually read. Then read the value back with no flag at all, which is the question a commit will ask: who is this person. Git answers Ada Lovelace. Finally, ask which level the email came from, and git replies global, meaning your home directory rather than any one project.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l02/m01l02-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git config --global user.name 'Ada Lovelace'
   git config --global user.email ada@example.com
   git config user.name
   git config --show-scope user.email
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l02-04`.

## Expected output

```text
$ git config --global user.name 'Ada Lovelace'
$ git config --global user.email ada@example.com
$ git config user.name
Ada Lovelace
$ git config --show-scope user.email
global	ada@example.com
```

## How to check

`./check m01l02-04` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
