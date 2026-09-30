# m02l02-07 · The body answering a question the diff cannot

**Lesson:** [Committing, And What A Good Message Says](https://learnsome.tech/learn/git-course/m02l02) (lesson 2.2, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to commit in every form git offers and write a subject and body that survive the views git puts them in.

In the lesson: This is the test of whether a body earns its place. Print the newest commit in full and read it as a stranger would: a subject, a blank line, and a paragraph saying why three retries, and not one, and not five. Now look at the change that commit made. One line, in one configuration file. The diff can tell you a number went from nothing to three. It cannot tell you that one retry failed on mobile networks, that five made the wait worse than the failure, or that a flaky test settled the argument.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log -1
   git diff --stat HEAD~1 HEAD
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l02-07`.

## Expected output

```text
$ git log -1
commit 2bf677531ed0f9aa39006ff5e60bb57a443b191b
Author: Ada Lovelace <ada@example.com>
Date:   Mon Mar 4 11:00:00 2024 +0000

    Retry three times before giving up
    
    One retry was not enough on mobile networks, and five made
    the wait worse than the failure. A flaky network test settled
    the argument at three.
$ git diff --stat HEAD~1 HEAD
 config.ini | 1 +
 1 file changed, 1 insertion(+)
```

## How to check

`./check m02l02-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
