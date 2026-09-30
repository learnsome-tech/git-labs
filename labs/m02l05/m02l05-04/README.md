# m02l05-04 · The fix: out of the index, still on disk

**Lesson:** [Ignoring Files, And The Tracked File Trap](https://learnsome.tech/learn/git-course/m02l05) (lesson 2.5, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to write ignore patterns that work, and untrack a file you had already committed by mistake.

In the lesson: The fix is one command, and the flag is the entire point of it. Git rm with the cached flag takes the path out of the index and leaves the file precisely where it sits on disk. Git confirms the removal by name. A short status calls it a deletion staged for commit, because the next snapshot will not contain that path. Commit that removal and the file is untracked at last. Ask for status once more and git prints nothing whatsoever, because what is left on disk is now covered by the rule you wrote. Then list the file itself: untouched, exactly as the running program still needs it.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l05/m02l05-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git rm --cached service.env
   git status --short
   git commit -m 'Stop tracking the service token'
   git status --short
   ls service.env
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l05-04`.

## Expected output

```text
$ git rm --cached service.env
rm 'service.env'
$ git status --short
D  service.env
$ git commit -m 'Stop tracking the service token'
[main d2da284] Stop tracking the service token
 1 file changed, 1 deletion(-)
 delete mode 100644 service.env
$ git status --short
$ ls service.env
service.env
```

## How to check

`./check m02l05-04` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
