# Exercises — Rebase: The Same Work, A Different History

Lesson `m03l04` · [Watch](https://learnsome.tech/courses/git-course/watch?lesson=m03l04)

## Exercise 1: Rebase something and prove what changed

1. Build a fork: one commit on main, one on a branch, from a shared commit
2. Record the branch tip with git rev-parse, rebase onto main, and record it again
3. Show that the commit you rebased onto kept its id and yours did not
4. Repeat with both sides editing the same line, and use git rebase --abort to back out

> **Hint**: git log --oneline --graph --all before and after is the fastest way to see what the operation did.


---

© LearnSome.tech · support@iwantto.learnsome.tech
