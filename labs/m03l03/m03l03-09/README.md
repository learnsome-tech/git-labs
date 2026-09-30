# m03l03-09 · Refusing the fast forward on purpose

**Lesson:** [Merging: Fast Forward Or A Merge Commit](https://learnsome.tech/learn/git-course/m03l03) (lesson 3.3, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to predict whether a merge fast forwards or makes a merge commit, and say why.

In the lesson: One flag worth knowing. This history would fast forward, but teams often want a commit that records the fact that a piece of work landed, even when git did not need one. The no fast forward flag asks for that. Git writes a merge commit anyway, with two parents, one of which is the branch you never moved. Look at the shape you get: a little loop instead of a straight line. Many projects set this as the default for merging a pull request, because the merge commit is where the review and the ticket number live.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l03/m03l03-09/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git merge --no-ff feature
   git log --oneline --graph
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l03-09`.

## Expected output

```text
$ git merge --no-ff feature
Merge made by the 'ort' strategy.
 notes.txt | 1 +
 1 file changed, 1 insertion(+)
$ git log --oneline --graph
*   b8cd61d Merge branch 'feature'
|\  
| * 6fa2cab Add a second line
|/  
* 5a9bfe1 Add notes
```

## How to check

`./check m03l03-09` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
