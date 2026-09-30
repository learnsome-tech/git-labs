# m02l02-04 · Three real views of the same subject line

**Lesson:** [Committing, And What A Good Message Says](https://learnsome.tech/learn/git-course/m02l02) (lesson 2.2, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to commit in every form git offers and write a subject and body that survive the views git puts them in.

In the lesson: The fifty character convention gets dismissed as fashion, so here it is, enforced by git itself, three times, in one small repository. The log with the oneline flag prints a subject whole, and the long one runs to the edge of any terminal you are likely to have. Now ask the log for a fifty column view of those subjects: git truncates, and the two dots on the end are git admitting it gave up. Finally the shortlog, which groups commits by author for release notes, wraps the long subject over two lines and leaves the short one alone. Nobody configured any of that.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git log --oneline
   git log --format='%<(50,trunc)%s'
   git shortlog -w50 HEAD
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l02-04`.

## Expected output

```text
$ git log --oneline
fb1a46a Change the default request timeout because mobile networks are slow
2c1c1d1 Add the request timeout
$ git log --format='%<(50,trunc)%s'
Change the default request timeout because mobil..
Add the request timeout                           
$ git shortlog -w50 HEAD
Ada Lovelace (2):
      Add the request timeout
      Change the default request timeout because
         mobile networks are slow
```

## How to check

`./check m02l02-04` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
