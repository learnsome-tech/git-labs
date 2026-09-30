# m01l01-06 · The whole history, answered from your disk

**Lesson:** [Why Version Control, And Why Git Won](https://learnsome.tech/learn/git-course/m01l01) (lesson 1.1, module 1: How Git Thinks) · Free  
**Check:** Graded

## Goal

You can say what a version control system stores, why Git's distributed copy makes history a local question, and what Git's integrity claim rests on.

In the lesson: This folder was cloned before the panel started, so the network has already done the only job it had. Git log with the oneline flag prints the whole history: three versions, newest at the top, each with a short ID and the message somebody wrote. Then ask for more of what is stored, and the same history comes back with the author beside the message. That is the question diff could not answer. Who changed the revenue figure, and why. Both answers came off your own disk, with no server in the picture, nothing to be down and nothing to wait for. That is what distributed means in practice rather than in a diagram.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l01/m01l01-06/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline
   git log --format='%h %an %s'
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l01-06`.

## Expected output

```text
$ git log --oneline
1a212f7 Add the costs line
8337a00 Correct the revenue figure
1eed4da Add the first draft of the report
$ git log --format='%h %an %s'
1a212f7 Ada Lovelace Add the costs line
8337a00 Ada Lovelace Correct the revenue figure
1eed4da Ada Lovelace Add the first draft of the report
```

## How to check

`./check m01l01-06` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
