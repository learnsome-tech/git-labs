# m04l01-08 · A remote tracking branch is a file you do not move

**Lesson:** [What A Remote Actually Is](https://learnsome.tech/learn/git-course/m04l01) (lesson 4.1, module 4: Remotes) · Pro  
**Check:** Graded

## Goal

You will be able to say what a remote is, attach one to a repository, and read back everything git knows about it.

In the lesson: A push has already run here, off camera, and this is what it left behind. List the remote tracking branches and there is one of them, origin slash main. It does not live on the server. It is a file in your own repository, under refs slash remotes slash origin slash main, so open the file and read the ID sitting in it. Now make another commit here and look at the log with decoration turned on: your branch has moved forward and origin slash main has stayed where it was. Read the file one more time and it holds the ID it held before. Git will not move that ref on a guess. It moves when you fetch or push, and at no other moment.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l01/m04l01-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git branch -r
   cat .git/refs/remotes/origin/main
   printf 'salt\n' >> recipe.txt
   git commit -q -am 'Add salt'
   git log --oneline --decorate -2
   cat .git/refs/remotes/origin/main
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m04l01-08`.

## Expected output

```text
$ git branch -r
  origin/main
$ cat .git/refs/remotes/origin/main
0000000000000000000000000000000000000000
$ printf 'salt\n' >> recipe.txt
$ git commit -q -am 'Add salt'
$ git log --oneline --decorate -2
0000000 (HEAD -> main) Add salt
0000000 (origin/main) Add recipe
$ cat .git/refs/remotes/origin/main
0000000000000000000000000000000000000000
```

## How to check

`./check m04l01-08` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
