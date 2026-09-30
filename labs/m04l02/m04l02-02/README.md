# m04l02-02 · Cloning a Remote Repository

**Lesson:** [Clone, Forks, Push, And The Upstream Branch](https://learnsome.tech/learn/git-course/m04l02) (lesson 4.2, module 4: Remotes) · Pro  
**Check:** Graded

## Goal

The learner can clone a repository, push changes to a remote, and explain the difference between a clone and a fork.

In the lesson: Let us clone a repository. We type git clone and the URL of the remote. Here we use a relative path to our local bare repository. Git creates a folder named after the project, downloads all the history, and checks out the default branch. The clone command also automatically creates the origin remote and sets up the tracking relationship for us.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l02/m04l02-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git clone ../remote.git project
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m04l02-02`.

## Expected output

```text
$ git clone ../remote.git project
Cloning into 'project'...
done.
```

## How to check

`./check m04l02-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m04l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
