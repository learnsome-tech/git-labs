# m02l03-06 · A commit message hook, eleven lines of shell

**Lesson:** [Conventional Commits](https://learnsome.tech/learn/git-course/m02l03) (lesson 2.3, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to write a conventional commit message and make git reject one that is not.

In the lesson: A convention nobody enforces decays, so here is enforcement. Git runs a hook called commit message after you write a message and before the commit exists, handing it the path of the message file. Ours is eleven lines of plain shell. It reads the first line of the file and nothing else, keeps the allowed types in a variable, and matches the subject against a pattern that is the specification written as a regular expression: a type, an optional scope, an optional exclamation mark, a colon and a space, then some description. Matching means exit zero and git carries on. Not matching means print something useful and exit one, because a failing exit is what makes git refuse the commit. Make the file executable, offer it a lazy message, and read what comes back.

## Files

- [`starter/commit-msg`](starter/commit-msg)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-06/starter`
2. Read `session.sh` the way the lesson builds it:
   - Lines 1–2: eleven lines of plain shell
   - Lines 3–7: Matching means exit zero
   - Lines 8–11: print something useful
3. Notes from the lesson:
   - Line 4: the subject only: the body is none of this hook's business
   - Line 5: type, optional scope, optional !, colon, space, description
   - Line 11: a failing exit status is what stops the commit being made
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l03-06`.

## Expected output

```text
$ chmod +x .git/hooks/commit-msg && git commit -m 'wip logging'
commit-msg: subject is not a conventional commit
  want: type(optional scope): description
  got:  wip logging
```

## How to check

`./check m02l03-06` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
