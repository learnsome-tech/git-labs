# m03l01-03 · Committing moves the pointer

**Lesson:** [A Branch Is A Moving Pointer](https://learnsome.tech/learn/git-course/m03l01) (lesson 3.1, module 3: Branches, HEAD And History) · Pro  
**Check:** Graded

## Goal

You will be able to create, rename and delete branches, and say exactly what each one is on disk.

In the lesson: Watch what committing does to it. Read the file before: one ID. Add a line to the file and make a commit. Git tells you which branch it landed on and what it summarised. Now read the file again. A different ID. The commit did two things: it wrote a new commit object whose parent is the old one, and it overwrote those forty bytes with the new ID. The old commit did not move and was not changed. Only the label moved. That is why people say a branch is a moving pointer, and it is meant literally.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m03l01/m03l01-03/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   cat .git/refs/heads/main
   printf 'third line\n' >> notes.txt
   git commit -am 'Add a third line'
   cat .git/refs/heads/main
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m03l01-03`.

## Expected output

```text
$ cat .git/refs/heads/main
87a8ebfdf95ba7a0bdcecb51b9e61427e2e59914
$ printf 'third line\n' >> notes.txt
$ git commit -am 'Add a third line'
[main 107f711] Add a third line
 1 file changed, 1 insertion(+)
$ cat .git/refs/heads/main
107f711d23053180bedc44284e9433a7b9172e0d
```

## How to check

`./check m03l01-03` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m03l01) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
