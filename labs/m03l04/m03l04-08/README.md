# m03l04-08 · When a replay does not apply cleanly

**Lesson:** [Rebase: The Same Work, A Different History](https://learnsome.tech/learn/git-course/m03l04) (lesson 3.4, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to rebase a branch, show that the commits are copies, and say when not to do it.

In the lesson: Sometimes a replayed change does not apply, because both sides changed the same line. Git stops part way through, tells you which commit it was replaying, and waits. The important thing to know today is the escape: abort puts everything back exactly as it was, including your branch, and you can go away and think about it. Nothing is half done and nothing is lost. Resolving the conflict rather than running away from it is module five, which does the job properly on both merge and rebase.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l04/m03l04-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git rebase main
   git rebase --abort
   git log --oneline --graph --all
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l04-08`.

## Expected output

```text
$ git rebase main
Rebasing (1/1)Auto-merging notes.txt
CONFLICT (content): Merge conflict in notes.txt
error: could not apply f59446d... Reword notes
hint: Resolve all conflicts manually, mark them as resolved with
hint: "git add/rm <conflicted_files>", then run "git rebase --continue".
hint: You can instead skip this commit: run "git rebase --skip".
hint: To abort and get back to the state before "git rebase", run "git rebase --abort".
Could not apply f59446d... Reword notes
$ git rebase --abort
$ git log --oneline --graph --all
* ae5f40c Reword the notes on main
| * f59446d Reword notes
|/  
* e06f066 Add notes
```

## How to check

`./check m03l04-08` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l04) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
