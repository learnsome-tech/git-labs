# m02l02 · Committing, And What A Good Message Says

Module 2: Everyday Git · lesson 2.2 · Pro · [Open the lesson](https://learnsome.tech/learn/git-course/m02l02)

**Goal:** You will be able to commit in every form git offers and write a subject and body that survive the views git puts them in.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m02l02-02](m02l02-02/) | Two forms of commit, and the file one of them misses | Graded |
| [m02l02-03](m02l02-03/) | What a message looks like when it is doing its job | Read along |
| [m02l02-04](m02l02-04/) | Three real views of the same subject line | Graded |
| [m02l02-05](m02l02-05/) | The subject git writes, and the ones it quotes | Graded |
| [m02l02-06](m02l02-06/) | A message from a file, and a message from standard input | Graded |
| [m02l02-07](m02l02-07/) | The body answering a question the diff cannot | Graded |
| [m02l02-08](m02l02-08/) | A template, so the prompt is waiting for you | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Commit four ways, and read the result back

1. Commit one change with the message flag and another with the all flag
2. Leave an untracked file beside them and prove the all flag ignored it
3. Write a message in a file with subject, body and a trailer, then use the file flag
4. Set commit.template, run git commit with no flag, and watch your prompt open

> **Hint:** If a subject line needs the word and, you are probably looking at two commits.

## Check yourself

- Which changes does the all flag commit, and which does it leave behind?
- Name two views in which git itself truncates or rewraps your subject line.
- What belongs in the body of a message that cannot be read from the diff?
- How would you commit a message that a script generated rather than typed?
- What does commit.template do, and what does git strip out of it?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
