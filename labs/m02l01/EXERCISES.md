# Exercises — Staging Deliberately: status, add, add --patch

Lesson `m02l01` · [Watch](https://learnsome.tech/courses/git-course/watch?lesson=m02l01)

## Exercise 1: Split a file you have already made a mess of

1. Make two unrelated edits inside one file, then read: git status --short
2. Run git add --patch on that file, answer q, and check nothing was staged
3. Run it again: answer y to one change, n to the other, then compare both diffs
4. Put it back with git restore --staged, and read the two columns once more

> **Hint**: If one change git offers you covers two things, answer s to split it into smaller ones.


---

© LearnSome.tech · support@iwantto.learnsome.tech
