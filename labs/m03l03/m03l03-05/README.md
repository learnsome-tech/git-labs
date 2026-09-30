# m03l03-05 · Both branches moved

**Lesson:** [Merging: Fast Forward Or A Merge Commit](https://learnsome.tech/learn/git-course/m03l03) (lesson 3.3, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to predict whether a merge fast forwards or makes a merge commit, and say why.

In the lesson: Now the second shape. This time a commit was made on each branch, touching different files. Draw it and there is a fork in it: two lines leaving one commit. Ask git to name the merge base and it hands back the ID of that shared commit, the newest one both branches can reach. This time the base is not the tip of either branch. Both sides have something the other has not got, so moving a label cannot possibly express the result. Something new has to be written down.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline --graph --all
   git merge-base main feature
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l03-05`.

## Expected output

```text
$ git log --oneline --graph --all
* a1531bb Add the main file
| * b8af5d2 Add the feature file
|/  
* 5a9bfe1 Add notes
$ git merge-base main feature
5a9bfe16534ec50daf8212c6640ef42b1c72010a
```

## How to check

`./check m03l03-05` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
