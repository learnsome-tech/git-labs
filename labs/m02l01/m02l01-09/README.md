# m02l01-09 · Taking something back out of the index

**Lesson:** [Staging Deliberately: status, add, add --patch](https://learnsome.tech/learn/git-course/m02l01) (lesson 2.1, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to turn a messy working tree into commits that each say one thing.

In the lesson: Staging is reversible, and that is what makes it safe to be decisive. The short report shows a letter in both columns, the state we built on purpose a moment ago. Restore with the staged flag copies the committed version of that path back into the index, and touches nothing at all in the working tree. Look again and the left column has gone quiet, while the right column still holds your work. Both edits are unstaged once more, and a summary of the working tree counts both insertions again. Nothing you typed was ever at risk. The index is a draft of your next commit, and a draft you could not tear up would be no use.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l01/m02l01-09/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git status --short
   git restore --staged recipes.md
   git status --short
   git diff --stat
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l01-09`.

## Expected output

```text
$ git status --short
MM recipes.md
$ git restore --staged recipes.md
$ git status --short
 M recipes.md
$ git diff --stat
 recipes.md | 2 ++
 1 file changed, 2 insertions(+)
```

## How to check

`./check m02l01-09` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
