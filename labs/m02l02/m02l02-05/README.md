# m02l02-05 · The subject git writes, and the ones it quotes

**Lesson:** [Committing, And What A Good Message Says](https://learnsome.tech/learn/git-course/m02l02) (lesson 2.2, module 2: Everyday Git) · Pro  
**Check:** Graded

## Goal

You will be able to commit in every form git offers and write a subject and body that survive the views git puts them in.

In the lesson: Subject lines get reused in places you do not control, and merging is the clearest case. Module three teaches merging properly, so watch only what happens to the text. Make a branch, commit one change on it, come back to main, and merge with two flags: no fast forward, so there is a real merge commit, and log, which asks git to summarise what arrived. Git writes its own subject, one imperative line about merging the branch, and pastes in the subject of every commit it absorbed. Print the whole message and there they are, quoted word for word, with no diff anywhere near them.

## Files

- [`starter/session.sh`](starter/session.sh): the listing from the lesson
- [`expected.txt`](expected.txt): the output the check compares with
- [`check.json`](check.json): how `./check` runs and checks this lab

## Steps

1. Go to the starter: `cd labs/m02l02/m02l02-05/starter`
2. Read `session.sh`.
3. The session types these commands, in order:

   ```sh
   git switch -q -c retry-window
   printf 'retries = 3\n' >> config.ini
   git commit -q -am 'Retry three times before giving up'
   git switch -q main
   git merge --no-ff --log retry-window
   git log -1 --format=%B
   ```
4. Run it: `bash session.sh`.
5. Check it from the repository root: `./check m02l02-05`.

## Expected output

```text
$ git switch -q -c retry-window
$ printf 'retries = 3\n' >> config.ini
$ git commit -q -am 'Retry three times before giving up'
$ git switch -q main
$ git merge --no-ff --log retry-window
Merge made by the 'ort' strategy.
 config.ini | 1 +
 1 file changed, 1 insertion(+)
$ git log -1 --format=%B
Merge branch 'retry-window'

* retry-window:
  Retry three times before giving up
```

## How to check

`./check m02l02-05` copies `starter/` into a scratch directory and runs `bash session.sh` there, the way the site's lab sandbox does: that directory is the working directory and `HOME`, `LANG=C.UTF-8`, `TZ=UTC`, a limit of 10 seconds and 256 KiB of output per stream.

It passes when the output matches `expected.txt` by the site's rules, within the limits. Standard output and standard error are compared after what depends on the machine or the git release is masked: object ids, dates, temporary directories, transfer sizes, the git version, `hint:` advice lines, the padding of counts and blank lines. A pass here is a pass on the site.

---

[Open the lesson on LearnSome.tech](https://learnsome.tech/learn/git-course/m02l02) · [All labs of this lesson](../README.md) · [Course README](../../../README.md)
