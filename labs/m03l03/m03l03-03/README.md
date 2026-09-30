# m03l03-03 · The merge that moves a label

**Lesson:** [Merging: Fast Forward Or A Merge Commit](https://learnsome.tech/learn/git-course/m03l03) (lesson 3.3, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to predict whether a merge fast forwards or makes a merge commit, and say why.

In the lesson: Standing on main, run the merge. Read the first word of the answer: git says it updated one commit to another, and then the words fast forward. Draw it again, this time without asking for all the branches, and main can now see the whole line. No new commit was created. Git had nothing to reconcile, so it did the only honest thing available: it moved the main label along the line until it sat on the same commit as feature. A merge that writes nothing is the cheapest merge there is.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git merge feature
   git log --oneline --graph
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l03-03`.

## Expected output

```text
$ git merge feature
Updating 5a9bfe1..23ab440
Fast-forward
 notes.txt | 2 ++
 1 file changed, 2 insertions(+)
$ git log --oneline --graph
* 23ab440 Add a third line
* 6fa2cab Add a second line
* 5a9bfe1 Add notes
```

## How to check

`./check m03l03-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
