# Exercises — What A Commit Really Is

Lesson `m01l04` · [Watch](https://learnsome.tech/courses/git-course/watch?lesson=m01l04)

## Exercise 1: Open a commit of your own

1. In any repository you have, run: git cat-file -p HEAD
2. Name each line out loud before reading on: tree, parent, author, committer, message
3. Follow the tree: git cat-file -p 'HEAD^{tree}', then print one blob you find in it
4. Find the root commit with: git rev-list --max-parents=0 HEAD, and open it

> **Hint**: A root commit is the one with no parent line. A repository can have more than one.


---

© LearnSome.tech · support@iwantto.learnsome.tech
