# Exercises — A Repository Is A Folder With A Memory

Lesson `m01l03` · [Watch](https://learnsome.tech/courses/git-course/watch?lesson=m01l03)

## Exercise 1: Initialize a repository, then inspect it

1. Create a directory, cd into it, run git init, then run it again and read the message.
2. Run ls -a and ls .git, cat .git/HEAD, and check .git/objects holds no versions yet.
3. Copy a project you already keep in git with cp -r, and run git log inside the copy.
4. From a subdirectory of it, run git rev-parse --show-toplevel and --show-prefix.

> **Hint**: If git answers that this is not a git repository, you are outside one: rev-parse --show-toplevel fails in exactly the same way, and that is a useful test.


---

© LearnSome.tech · support@iwantto.learnsome.tech
