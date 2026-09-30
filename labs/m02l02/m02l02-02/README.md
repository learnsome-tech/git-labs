# m02l02-02 · Two forms of commit, and the file one of them misses

**Lesson:** [Committing, And What A Good Message Says](https://learnsome.tech/learn/git-course/m02l02) (lesson 2.2, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to commit in every form git offers and write a subject and body that survive the views git puts them in.

In the lesson: This repository has one staged file and no history at all. The message flag takes the text as its argument, so nothing opens and nothing waits: git answers with the branch, the new abbreviated ID, the subject, and a count of what changed. Now edit the tracked file, and drop a scratch file beside it. The all flag stages every tracked file that has been modified, then commits, in one step. Read the count: one file changed. Ask for a short status afterwards and the scratch file is still there, untracked. The all flag never adds something git has not seen before.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git commit -m 'Add the request timeout'
   printf 'retries = 3\n' >> config.ini
   printf 'scratch\n' > notes.tmp
   git commit -a -m 'Retry three times before giving up'
   git status --short
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l02-02`.

## Expected output

```text
$ git commit -m 'Add the request timeout'
[main (root-commit) 2c1c1d1] Add the request timeout
 1 file changed, 1 insertion(+)
 create mode 100644 config.ini
$ printf 'retries = 3\n' >> config.ini
$ printf 'scratch\n' > notes.tmp
$ git commit -a -m 'Retry three times before giving up'
[main 7879cd4] Retry three times before giving up
 1 file changed, 1 insertion(+)
$ git status --short
?? notes.tmp
```

## How to check

`./check m02l02-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
