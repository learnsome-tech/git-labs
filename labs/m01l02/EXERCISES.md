# Exercises — Installing Git, And Telling It Who You Are

Lesson `m01l02` · [Watch](https://learnsome.tech/courses/git-course/watch?lesson=m01l02)

## Exercise 1: Set your own identity, and find its file

1. Run: git --version, then git config --global --list
2. Set both: git config --global user.name 'Your Name', then the same for user.email
3. Read it back: git config --show-origin user.name
4. In one repository: git config --local user.email other@address, then read it back

> **Hint**: The three levels are system, global and local, and the nearest one to the repository wins.


---

© LearnSome.tech · support@iwantto.learnsome.tech
