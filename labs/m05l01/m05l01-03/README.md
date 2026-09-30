# m05l01-03 · Panel 2

**Lesson:** [The Pull Request, And Branch Naming](https://learnsome.tech/learn/git-course/m05l01) (lesson 5.1, module 5: Working With Other People) · Pro  
**Check:** Graded

## Goal

You will be able to prepare, name, and open a pull request.

In the lesson: To start a new piece of work, you create a branch following your team's naming convention. You make your commits as usual. When you are ready to share the work, you push the branch to the remote repository. The dash u flag sets the upstream tracking branch, connecting your local branch to the remote one. Once the branch is pushed, you go to the platform, like GitHub, to open the pull request.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l01/m05l01-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git checkout -b feature/42-new-button
   git commit --allow-empty -m 'Add a new button'
   git push -u origin feature/42-new-button
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m05l01-03`.

## Expected output

```text
$ git checkout -b feature/42-new-button
Switched to a new branch 'feature/42-new-button'
$ git commit --allow-empty -m 'Add a new button'
[feature/42-new-button 1a2b3c4] Add a new button
$ git push -u origin feature/42-new-button
branch 'feature/42-new-button' set up to track 'origin/feature/42-new-button'.
To ../remote.git
 * [new branch]      feature/42-new-button -> feature/42-new-button
```

## How to check

`./check m05l01-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m05l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
