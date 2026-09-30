# m02l05-03 · The trap: a rule added after the file was committed

**Lesson:** [Ignoring Files, And The Tracked File Trap](https://learnsome.tech/learn/git-course/m02l05) (lesson 2.5, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to write ignore patterns that work, and untrack a file you had already committed by mistake.

In the lesson: Here is the trap, made on purpose so you can watch it happen. A file of service settings is written, added and committed, which is the moment the damage is done. Read the commit output: one file changed, one insertion, a new mode created. Then the penny drops, and the offending name goes into the git ignore file. Edit the settings file, ask for a short status, and git still reports that path as modified, with the new ignore file beside it as untracked. The rule did nothing, and git is not broken. Being tracked is a fact recorded in the index, and the ignore list is consulted only for paths git does not already track.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l05/m02l05-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git add service.env
   git commit -m 'Add the service token'
   printf 'service.env\n' > .gitignore
   printf 'API_TOKEN=hunter3\n' > service.env
   git status --short
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l05-03`.

## Expected output

```text
$ git add service.env
$ git commit -m 'Add the service token'
[main 132deeb] Add the service token
 1 file changed, 1 insertion(+)
 create mode 100644 service.env
$ printf 'service.env\n' > .gitignore
$ printf 'API_TOKEN=hunter3\n' > service.env
$ git status --short
 M service.env
?? .gitignore
```

## How to check

`./check m02l05-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
