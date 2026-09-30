# m02l05-07 · A private list, and a nested list that overrules it

**Lesson:** [Ignoring Files, And The Tracked File Trap](https://learnsome.tech/learn/git-course/m02l05) (lesson 2.5, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to write ignore patterns that work, and untrack a file you had already committed by mistake.

In the lesson: Rules can live in more than one place, and two are worth doing by hand. The private list is a file inside the repository directory, at info slash exclude. It is never committed: your own clutter belongs there, not in the shared list the team reads. Append a name to it and that path goes quiet for you alone. The second place is a nested ignore file, whose patterns apply from its own directory downwards. Here the shared list hides every markdown file, and a nested list puts one of them back. Status settles it: the plan is untracked again, while the private list has hidden the scratch file. Then ask check ignore which rule decided, and it names the nested file and its pattern.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l05/m02l05-07/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   printf 'scratch.txt\n' >> .git/info/exclude
   printf '!plan.md\n' > notes/.gitignore
   git status --short --untracked-files=all
   git check-ignore -v notes/plan.md
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l05-07`.

## Expected output

```text
$ printf 'scratch.txt\n' >> .git/info/exclude
$ printf '!plan.md\n' > notes/.gitignore
$ git status --short --untracked-files=all
?? notes/.gitignore
?? notes/keep.txt
?? notes/plan.md
$ git check-ignore -v notes/plan.md
notes/.gitignore:1:!plan.md	notes/plan.md
```

## How to check

`./check m02l05-07` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output is compared line by line; spaces at the end of a line and blank lines at the end do not count. If that differs, standard output followed by standard error is compared with Python traceback frames and blank lines set aside, so a lesson that shows an error passes when your program prints the same error. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l05) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
