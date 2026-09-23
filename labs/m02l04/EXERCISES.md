# Exercises — Reading History: log, show And diff

Lesson `m02l04` · [Watch](https://learnsome.tech/courses/git-course/watch?lesson=m02l04)

## Exercise 1: Interrogate a history you did not write

1. Open any repository with real history and list the newest ten commits with git log --oneline
2. Narrow to one file: git log --oneline --stat -- path/to/file, and read who touched it
3. Pick a function name from that file and run git log --oneline -S theName
4. Print an old version without checking anything out: git show HEAD~3:path/to/file

> **Hint**: If a filter returns nothing, widen it: a date range and an author together exclude almost everything.


---

© LearnSome.tech · support@iwantto.learnsome.tech
