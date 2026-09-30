# m01l03-02 · Turning a folder into a repository with git init

**Lesson:** [A Repository Is A Folder With A Memory](https://learnsome.tech/learn/git-course/m01l03) (lesson 1.3, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You can turn any directory into a repository with git init, name what lives inside the hidden .git directory, and prove that the repository is that directory and nothing else.

In the lesson: Making one takes two steps, and neither of them is clever. Create a directory for the project and move into it, exactly as you would for any other work. Then you run git init. Git answers with a single sentence: it has initialized an empty git repository, and here is where. That sentence is the same on every machine and in every project, except for the path at the end, which is your own directory with dot git added. The path is the only part that ever varies. Empty means there is no history yet, not that anything went wrong.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l03/m01l03-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   mkdir my-project
   cd my-project
   git init
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l03-02`.

## Expected output

```text
$ mkdir my-project
$ cd my-project
$ git init
Initialized empty Git repository in /tmp/my-project/.git/
```

## How to check

`./check m01l03-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
