# m04l02-03 · Checking Status and Pushing Ahead

**Lesson:** [Clone, Forks, Push, And The Upstream Branch](https://learnsome.tech/learn/git-course/m04l02) (lesson 4.2, module 4: Remotes) · Pro  
**Check:** Graded

## Goal

The learner can clone a repository, push changes to a remote, and explain the difference between a clone and a fork.

In the lesson: Now we do some work and make a new commit. When we check the status, git notices that our local branch has a commit that the remote branch does not have. It tells us we are ahead by one commit, and suggests we push. Because the clone command linked our local branch to the remote branch, we do not need to specify where to push. This link is called an upstream branch. We can run git push, and git sends our new commit to the server, updating the remote branch to match.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l02/m04l02-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git commit --allow-empty -m 'Second'
   git status
   git push
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m04l02-03`.

## Expected output

```text
$ git commit --allow-empty -m 'Second'
[main a1b2c3d] Second
$ git status
On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
$ git push
To ../remote.git
   a1b2c3d..e4f5g6h  main -> main
```

## How to check

`./check m04l02-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m04l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
