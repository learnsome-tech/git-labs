# m04l01-04 · Attaching a name to a path

**Lesson:** [What A Remote Actually Is](https://learnsome.tech/learn/git-course/m04l01) (lesson 4.1, module 4: Remotes) · Pro  
**Check:** Graded

## Goal

You will be able to say what a remote is, attach one to a repository, and read back everything git knows about it.

In the lesson: A repository begins with no remotes at all. Ask a fresh repository for its remotes and git prints nothing, which is the honest answer. Add one: the add subcommand takes the name you want and the location it stands for, and the location here is a relative path to the bare repository next door. Ask again and the name is listed. The verbose flag prints the location behind each name twice, because fetch and push are configured separately and are allowed to differ. There is no hidden registry behind any of this. It is a couple of lines in the config file of this repository, and you can read with git config to prove it.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m04l01/m04l01-04/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git remote
   git remote add origin ../server.git
   git remote
   git remote -v
   git config remote.origin.url
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m04l01-04`.

## Expected output

```text
$ git remote
$ git remote add origin ../server.git
$ git remote
origin
$ git remote -v
origin	../server.git (fetch)
origin	../server.git (push)
$ git config remote.origin.url
../server.git
```

## How to check

`./check m04l01-04` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m04l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
