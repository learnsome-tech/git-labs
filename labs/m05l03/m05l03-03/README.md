# m05l03-03 · Panel 2

**Lesson:** [Why Conflicts Happen](https://learnsome.tech/learn/git-course/m05l03) (lesson 5.3, module 5: Working With Other People) · Pro  
**Check:** Graded

## Goal

You will understand how Git detects a conflict by comparing two branches against their merge base.

In the lesson: Let us see a conflict happen. We started with a file that just said apples. On the main branch, we changed it to say apples and oranges. On our branch, we changed the exact same line to say apples and pears. When we run the merge, Git sees that both branches changed the same line from the original merge base. It prints a warning that the automatic merge failed, and it leaves the file in a conflicted state for us to fix.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`starter/shopping.txt`](starter/shopping.txt)
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l03/m05l03-03/starter`
2. Read `session.sh`.
3. Run it: `bash session.sh`.
4. Check it from the repository root: `./check m05l03-03`.

## Expected output

```text
$ git merge main
Auto-merging shopping.txt
CONFLICT (content): Merge conflict in shopping.txt
Automatic merge failed; fix conflicts and then commit the result.
```

## How to check

`./check m05l03-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m05l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
