# m03l03 · Merging: Fast Forward Or A Merge Commit

Module 3: Branches, HEAD And History · lesson 3.3 · Pro · [Open the lesson](https://learnsome.tech/learn/git-course/m03l03)

**Goal:** You will be able to predict whether a merge fast forwards or makes a merge commit, and say why.

## Labs

| Lab | What it is | Check |
| --- | --- | --- |
| [m03l03-02](m03l03-02/) | A branch that ran ahead while main stood still | Graded |
| [m03l03-03](m03l03-03/) | The merge that moves a label | Graded |
| [m03l03-05](m03l03-05/) | Both branches moved | Graded |
| [m03l03-06](m03l03-06/) | The merge that writes a commit | Graded |
| [m03l03-07](m03l03-07/) | A merge commit has two parents | Graded |
| [m03l03-09](m03l03-09/) | Refusing the fast forward on purpose | Graded |

## Exercises

Open exercises from the lesson, to try on your own. They have no answer files: work them out, and use the labs above as reference.

### Build both shapes and predict the outcome

1. Make a repository, branch, commit twice on the branch only, and merge it into main
2. Before running the merge, predict out loud whether it fast forwards, then check the wording
3. Now build the other shape: one commit on each branch, then merge, and open the result
4. Confirm the merge commit has two parent lines, and that the old ids are unchanged

> **Hint:** git merge-base tells you the answer before you merge; compare it with git rev-parse HEAD.

## Check yourself

- What is the merge base of two branches?
- Under exactly what condition does a merge fast forward?
- What is structurally different about a merge commit?
- Why does the no fast forward flag exist if git did not need a commit?
- After a merge, have the IDs of the merged commits changed?

---

[Course README](../../README.md) · [Advanced Git Internals & Distributed Workflows on LearnSome.tech](https://learnsome.tech/courses/git-course)
