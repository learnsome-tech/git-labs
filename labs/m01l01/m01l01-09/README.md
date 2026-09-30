# m01l01-09 · One letter changed, a different id

**Lesson:** [Why Version Control, And Why Git Won](https://learnsome.tech/learn/git-course/m01l01) (lesson 1.1, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You can say what a version control system stores, why Git's distributed copy makes history a local question, and what Git's integrity claim rests on.

In the lesson: Run it on the same line twice and the same ID comes back twice. That is not a cache remembering your last answer; the ID is computed from the content, so identical content has to produce it. Now change one letter, a capital instead of a small one, and the new ID is not a near miss. It shares nothing with the old one. That is the integrity claim underneath everything else git does: a thing is filed under a name derived from its bytes, so bytes that have been altered, by a failing disk or by a person, no longer match the name they sit under. Git notices, rather than trusting.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-09/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   printf 'Revenue is up.\n' | git hash-object --stdin
   printf 'Revenue is up.\n' | git hash-object --stdin
   printf 'Revenue is Up.\n' | git hash-object --stdin
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l01-09`.

## Expected output

```text
$ printf 'Revenue is up.\n' | git hash-object --stdin
e2d05fa0dbbdbe41fcd15a91cdcd026e30cdb5eb
$ printf 'Revenue is up.\n' | git hash-object --stdin
e2d05fa0dbbdbe41fcd15a91cdcd026e30cdb5eb
$ printf 'Revenue is Up.\n' | git hash-object --stdin
d185a2e8a9d84ce6c6eb7057a3c4e7b6d61cd350
```

## How to check

`./check m01l01-09` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
