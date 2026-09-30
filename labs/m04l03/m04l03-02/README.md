# m04l03-02 · Checking Remote Updates with Fetch

**Lesson:** [Fetch Is Not Pull](https://learnsome.tech/learn/git-course/m04l03) (lesson 4.3, module 4: Remotes) · Pro  
**Check:** Graded

## Goal

The learner can explain that fetch downloads commits without changing the working tree, while pull fetches and then merges.

In the lesson: Let us see fetch in action. A teammate has pushed a new commit to the server. When we check our status, git says we are up to date. This is because git does not talk to the network unless we tell it to. We run fetch to download the new commits. It tells us it updated the remote tracking branch, origin slash main, without touching our local files.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l03/m04l03-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git status
   git fetch
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m04l03-02`.

## Expected output

```text
$ git status
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
$ git fetch
From /tmp/gitcourse-27CZ1l/work/../remote
   1c3ad0f..9c04f68  main       -> origin/main
```

## How to check

`./check m04l03-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m04l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
