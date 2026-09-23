# Exercises — A Branch Is A Moving Pointer

Lesson `m03l01` · [Watch](https://learnsome.tech/courses/git-course/watch?lesson=m03l01)

## Exercise 1: Prove it on your own repository

1. In a repository of your own, run: cat .git/refs/heads/main, then git rev-parse main
2. Make a commit, read that file again, and confirm only the id changed
3. Create a branch, then run: wc -c on its file under .git/refs/heads
4. Try git branch -d on an unmerged branch, read the refusal, then keep the id it printed

> **Hint**: If your default branch is called something other than main, use that name in the paths.


---

© LearnSome.tech · support@iwantto.learnsome.tech
