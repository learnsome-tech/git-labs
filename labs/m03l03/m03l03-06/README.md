# m03l03-06 · The merge that writes a commit

**Lesson:** [Merging: Fast Forward Or A Merge Commit](https://learnsome.tech/learn/git-course/m03l03) (lesson 3.3, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to predict whether a merge fast forwards or makes a merge commit, and say why.

In the lesson: The same command, against the other shape. This time git does not say fast forward. It says a merge was made by a strategy, names it, and lists the files it brought in. Look at the picture now. The two lines leave the shared commit, run alongside each other, and come back together at a new commit at the top. That new commit is the merge commit, and drawing it is not an artistic decision. It is there because the object really does join the two lines, and the next screen proves it.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git merge feature
   git log --oneline --graph
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l03-06`.

## Expected output

```text
$ git merge feature
Merge made by the 'ort' strategy.
 feature.txt | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 feature.txt
$ git log --oneline --graph
*   58a76de Merge branch 'feature'
|\  
| * b8af5d2 Add the feature file
* | a1531bb Add the main file
|/  
* 5a9bfe1 Add notes
```

## How to check

`./check m03l03-06` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
