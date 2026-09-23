# Exercises — Ignoring Files, And The Tracked File Trap

Lesson `m02l05` · [Watch](https://learnsome.tech/courses/git-course/watch?lesson=m02l05)

## Exercise 1: Fall into the trap deliberately, then climb out

1. In a scratch repository, commit a file called secrets.env, then add that name to .gitignore
2. Run git status and watch git report the file as modified anyway
3. Untrack it with git rm --cached, commit the removal, and confirm the file is still on disk
4. Run git check-ignore -v secrets.env and git status --ignored, and read both answers aloud

> **Hint**: If status still lists the path after the removal, you have not committed the removal yet.


---

© LearnSome.tech · support@iwantto.learnsome.tech
