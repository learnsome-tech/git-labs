# m02l02-08 · A template, so the prompt is waiting for you

**Lesson:** [Committing, And What A Good Message Says](https://learnsome.tech/learn/git-course/m02l02) (lesson 2.2, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to commit in every form git offers and write a subject and body that survive the views git puts them in.

In the lesson: One mechanism left, the one that makes the rest a habit. Point the configuration key commit dot template at a file, and every message you write from then on opens with that file in front of you. Here is mine: four comment lines. A build machine has no editor, so this session hands git the cat command in place of one, and the buffer is printed instead of opened. What git put there is exactly my template. Now read the last line: git strips every line beginning with a hash, finds nothing left, and refuses. A template is a prompt, not a message.

## Files

- [`starter/.gitmessage`](starter/.gitmessage)
- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-08/starter`
2. Read `session.sh`.
3. Run it: `bash session.sh`.
4. Check it from the repository root: `./check m02l02-08`.

## Expected output

```text
$ GIT_EDITOR=cat git commit --no-status
# Subject: one imperative line, capitalised, under fifty characters
# Then a blank line, then the body: why this change, not what changed
# Wrap the body near seventy-two columns
# Trailers last: Refs, Reviewed-by, Co-authored-by
Aborting commit due to empty commit message.
```

## How to check

`./check m02l02-08` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
