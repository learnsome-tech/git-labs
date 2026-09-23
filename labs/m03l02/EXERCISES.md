# Exercises — HEAD, And Why Detached HEAD Is Not An Error

Lesson `m03l02` · [Watch](https://learnsome.tech/courses/git-course/watch?lesson=m03l02)

## Exercise 1: Detach, commit, and get it back

1. In a scratch repository, run: cat .git/HEAD, then switch branch and read it again
2. Detach on purpose: git switch --detach HEAD~1, and read what status now calls your position
3. Make a commit while detached, then run git switch main and read the whole warning
4. Get the commit back as a branch, first by copying the printed id, then by using a single dash

> **Hint**: Do this in a repository you do not mind damaging, so you can read the warnings rather than fear them.


---

© LearnSome.tech · support@iwantto.learnsome.tech
