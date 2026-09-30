# m02l03-05 · Asking the log a question only a grammar can answer

**Lesson:** [Conventional Commits](https://learnsome.tech/learn/git-course/m02l03) (lesson 2.3, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to write a conventional commit message and make git reject one that is not.

In the lesson: Time to test the machine readable claim rather than repeat it. This repository carries five commits written to the convention, with a mixture of types: two features, a fix, a documentation change and a refactor. Ask for the log in its one line form and you get what a person wants, a page that scans. Now ask a narrower question. The grep flag filters commits by message, and this pattern says: subjects beginning with the word feat. Two come back, and they are the two a release note would file under features. Ask for features and fixes together by passing grep twice, and you get the three commits a new version would be cut from. No tool and no configuration; the structure alone is queryable.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l03/m02l03-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline
   git log --oneline --grep '^feat'
   git log --oneline --grep '^feat' --grep '^fix'
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l03-05`.

## Expected output

```text
$ git log --oneline
65ca020 feat(cli): add a status subcommand
362f1fc refactor: move the probe into its own module
cc1c050 fix(api): return a body on a failed probe
7525f41 docs: describe the health endpoint
1ce643c feat(api): add a health endpoint
$ git log --oneline --grep '^feat'
65ca020 feat(cli): add a status subcommand
1ce643c feat(api): add a health endpoint
$ git log --oneline --grep '^feat' --grep '^fix'
65ca020 feat(cli): add a status subcommand
cc1c050 fix(api): return a body on a failed probe
1ce643c feat(api): add a health endpoint
```

## How to check

`./check m02l03-05` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l03) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
