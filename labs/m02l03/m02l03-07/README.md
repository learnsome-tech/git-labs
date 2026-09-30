# m02l03-07 · Rejected, accepted, and the way around it

**Lesson:** [Conventional Commits](https://learnsome.tech/learn/git-course/m02l03) (lesson 2.3, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to write a conventional commit message and make git reject one that is not.

In the lesson: Watch the same hook say no out loud, with its exit status beside it: one, not zero, which is the whole mechanism. Then fix the message. The type is feat, the scope is log, a colon and a space follow, and the hook says nothing at all, which is what passing looks like: silence, and a commit. The log shows it landed beside the one the repository started with. Then the hole in it, shown rather than hidden. Pass the no verify flag and git skips your commit hooks entirely, so the lazy message walks straight in. That flag exists for good reasons and it is one keystroke away, which tells you what a local hook is: a reminder, not a rule.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git commit -m 'wip logging' 2>&1; echo "exit code $?"
   git commit -m 'feat(log): record every failed probe'
   git log --oneline
   git commit --allow-empty --no-verify -m 'wip again'
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l03-07`.

## Expected output

```text
$ git commit -m 'wip logging' 2>&1; echo "exit code $?"
commit-msg: subject is not a conventional commit
  want: type(optional scope): description
  got:  wip logging
exit code 1
$ git commit -m 'feat(log): record every failed probe'
[main 3d12f30] feat(log): record every failed probe
 1 file changed, 1 insertion(+)
$ git log --oneline
3d12f30 feat(log): record every failed probe
1ce643c feat(api): add a health endpoint
$ git commit --allow-empty --no-verify -m 'wip again'
[main 906b623] wip again
```

## How to check

`./check m02l03-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
