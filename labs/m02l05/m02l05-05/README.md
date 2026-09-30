# m02l05-05 · Untracking changes the future, not the past

**Lesson:** [Ignoring Files, And The Tracked File Trap](https://learnsome.tech/learn/git-course/m02l05) (lesson 2.5, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to write ignore patterns that work, and untrack a file you had already committed by mistake.

In the lesson: Untracking a path changes the future, never the past. Look at the log: four commits, two of which touch the settings file. Ask for the log of that single path and git names the commit that added it and the one that stopped tracking it. Now ask git to show the file as it stood one commit back: the value is still there, because a commit is a snapshot and snapshots are immutable. So if that value was a real credential, untracking protects nobody. Rotate it: treat it as leaked from the moment it was pushed, because anybody with a clone holds the whole history. Scrubbing it out of old commits is separate and unpleasant, and module six covers it.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l05/m02l05-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline
   git log --oneline -- service.env
   git show HEAD~1:service.env
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l05-05`.

## Expected output

```text
$ git log --oneline
d2da284 Stop tracking the service token
9551ed3 Ignore the service token
132deeb Add the service token
d1c72ce Add the app config
$ git log --oneline -- service.env
d2da284 Stop tracking the service token
132deeb Add the service token
$ git show HEAD~1:service.env
API_TOKEN=hunter2
```

## How to check

`./check m02l05-05` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
