# m01l05-08 · Proving the index is a real thing

**Lesson:** [The Three Areas: Working Tree, Index, Repository](https://learnsome.tech/learn/git-course/m01l05) (lesson 1.5, module 1: How Git Thinks) · Pro  
**Check:** Graded

## Goal

You will be able to read git status as a report on three named areas and say which one every line describes.

In the lesson: One last piece of evidence, because a staging area is easy to mistake for a metaphor. Ask git to list the index with the stage flag: a mode, an object ID and a name, for every entry it holds. Those IDs are not promises. Ask the object database for the type of the staged file and it answers blob, so the content is stored already, before any commit mentions it. Print it and you get the version you staged. Print the file on disk beside it and you get a different, longer version. Two contents, two areas, both of them real.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m01l05/m01l05-08/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git ls-files --stage
   git cat-file -t :notes.txt
   git cat-file -p :notes.txt
   cat notes.txt
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m01l05-08`.

## Expected output

```text
$ git ls-files --stage
100644 9dd0f8d245d1d3f04e226801c97716b2784038d8 0	notes.txt
100644 f1017fceccdcd29933ea93fe20007d55cbc95317 0	plan.txt
$ git cat-file -t :notes.txt
blob
$ git cat-file -p :notes.txt
draft notes
$ cat notes.txt
draft notes
and a second line
```

## How to check

`./check m01l05-08` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m01l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
