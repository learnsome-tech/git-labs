# m05l04-02 · Panel 1

**Lesson:** [Resolving A Conflict, Line By Line](https://learnsome.tech/learn/git-course/m05l04) (lesson 5.4, module 5: Working With Other People) · Pro  
**Check:** Graded

## Goal

You will be able to read conflict markers, resolve the file, and complete the merge.

In the lesson: You open the file in your editor and delete the markers. You combine the two lines, perhaps keeping both pears and oranges. Once the file is correct, you run git add to tell Git the conflict is resolved. Finally, you run git commit. Because Git knows you were in the middle of a merge, it will automatically populate the commit message for you, and the merge is complete.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m05l04/m05l04-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   cat shopping.txt
   echo 'apples, pears, and oranges' > shopping.txt
   git add shopping.txt
   git commit -m 'Merge main, keeping both fruits'
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m05l04-02`.

## Expected output

```text
$ cat shopping.txt
<<<<<<< HEAD
apples and pears
=======
apples and oranges
>>>>>>> main
$ echo 'apples, pears, and oranges' > shopping.txt
$ git add shopping.txt
$ git commit -m 'Merge main, keeping both fruits'
[other 7d8e9f0] Merge main, keeping both fruits
```

## How to check

`./check m05l04-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m05l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
