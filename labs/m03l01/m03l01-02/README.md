# m03l01-02 · The branch, as a file on disk

**Lesson:** [A Branch Is A Moving Pointer](https://learnsome.tech/learn/git-course/m03l01) (lesson 3.1, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to create, rename and delete branches, and say exactly what each one is on disk.

In the lesson: Here is a repository with two commits on the default branch. Ask which branches exist and there is one, with a star beside the one you are on. Now open the file that branch is stored in. Inside the git directory, under refs and then heads, there is a file named main, and it holds one object ID and a newline. That is the branch. Ask git to resolve the name and you get the same answer, because resolving a branch name is reading that file. Forty-one bytes, and a large part of git's reputation for speed.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-02/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git branch
   cat .git/refs/heads/main
   git rev-parse main
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l01-02`.

## Expected output

```text
$ git branch
* main
$ cat .git/refs/heads/main
87a8ebfdf95ba7a0bdcecb51b9e61427e2e59914
$ git rev-parse main
87a8ebfdf95ba7a0bdcecb51b9e61427e2e59914
```

## How to check

`./check m03l01-02` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
