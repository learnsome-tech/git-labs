<p>
  <a href="https://learnsome.tech/courses/git-course">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset=".github/assets/wordmark-inverse.svg">
      <img src=".github/assets/wordmark.svg" alt="LearnSome.tech" width="260">
    </picture>
  </a>
</p>

# Advanced Git Internals & Distributed Workflows

**Object Storage, DAGs, Interactive Rebase & Bisecting**

6 modules, 28 lessons: How Git Thinks; Everyday Git; Branches, HEAD And History; Remotes; Working With Other People; Rewriting History, Tags And Workflows. Beginner level, about 2 hours.

This repository holds the labs of the LearnSome.tech course [Advanced Git Internals & Distributed Workflows](https://learnsome.tech/courses/git-course): each lab's starter files, a README with the goal, the steps and the expected output, and `./check`, which tests your work the way the site does.

## Start

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/learnsome-tech/git-labs?quickstart=1)

- **Codespaces:** the badge opens this repository in a dev container with Python 3.14.7 and Git 2.34 (Ubuntu 22.04's), as in the site's lab sandbox.
- **On your machine:**

  ```sh
  git clone https://github.com/learnsome-tech/git-labs.git
  cd git-labs
  ./check m01l01-02
  ```

  You need Python 3 for `./check`, and for the labs themselves Python 3.14.7 and Git 2.34 (Ubuntu 22.04's). Other versions mostly work, but only the sandbox's versions are sure to print what the site prints. VS Code's Dev Containers extension builds the same container as Codespaces (x86-64).

## Doing a lab

1. Open the lesson on LearnSome.tech and the lab folder beside it: `labs/<lesson>/<lab>/`. The lab README has the goal, the steps and the expected output.
2. Work in the lab's `starter/` folder.
3. From the repository root, run `./check <lab>` (for example `./check m01l01-02`), or `./check <lesson>` for all labs of a lesson, or `./check --all`. `./check --list` shows every lab and how it is checked.

`./check` runs your starter the way the site's lab sandbox does: in a scratch copy that is its working directory and `HOME`, with `LANG=C.UTF-8`, `TZ=UTC`, `input.txt` on standard input, 10 seconds and 256 KiB of output per stream. It then compares the output with the site's own rules, so a pass here is a pass on the site.

| Check | What `./check` does | Labs |
| --- | --- | --- |
| Graded | Runs the program and compares its output with `expected.txt`. | 101 |
| Read along | Nothing to run here: the site shows the listing read-only, and the lab README says honestly what it needs (Docker, a cluster, a cloud account...). | 22 |

## What is published, and what is not

Every lab's starter is the code the lesson shows on screen, which is also what the lab editor on the site opens with. Where that code is the whole program, such as a recorded shell session or a script from the video, it is published as it is: it is the lesson content. Nothing beyond the lesson is published. There are no reference solutions and no answers to the lesson exercises, and nothing the site keeps private.

Pro lessons' labs are here as starters too. LearnSome.tech runs and grades your labs in its sandbox, hosts the videos and keeps your progress; running and grading a Pro lab on the site needs Pro.

## Modules and lessons

### Module 1: How Git Thinks

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 1.1 | [Why Version Control, And Why Git Won](https://learnsome.tech/learn/git-course/m01l01) | [5 labs](labs/m01l01/) | Free |
| 1.2 | [Installing Git, And Telling It Who You Are](https://learnsome.tech/learn/git-course/m01l02) | [6 labs](labs/m01l02/) | Free |
| 1.3 | [A Repository Is A Folder With A Memory](https://learnsome.tech/learn/git-course/m01l03) | [7 labs](labs/m01l03/) | Free |
| 1.4 | [What A Commit Really Is](https://learnsome.tech/learn/git-course/m01l04) | [6 labs](labs/m01l04/) | Free |
| 1.5 | [The Three Areas: Working Tree, Index, Repository](https://learnsome.tech/learn/git-course/m01l05) | [6 labs](labs/m01l05/) | Pro |

### Module 2: Everyday Git

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 2.1 | [Staging Deliberately: status, add, add --patch](https://learnsome.tech/learn/git-course/m02l01) | [8 labs](labs/m02l01/) | Pro |
| 2.2 | [Committing, And What A Good Message Says](https://learnsome.tech/learn/git-course/m02l02) | [7 labs](labs/m02l02/) | Pro |
| 2.3 | [Conventional Commits](https://learnsome.tech/learn/git-course/m02l03) | [4 labs](labs/m02l03/) | Pro |
| 2.4 | [Reading History: log, show And diff](https://learnsome.tech/learn/git-course/m02l04) | [7 labs](labs/m02l04/) | Pro |
| 2.5 | [Ignoring Files, And The Tracked File Trap](https://learnsome.tech/learn/git-course/m02l05) | [6 labs](labs/m02l05/) | Pro |

### Module 3: Branches, HEAD And History

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 3.1 | [A Branch Is A Moving Pointer](https://learnsome.tech/learn/git-course/m03l01) | [6 labs](labs/m03l01/) | Pro |
| 3.2 | [HEAD, And Why Detached HEAD Is Not An Error](https://learnsome.tech/learn/git-course/m03l02) | [6 labs](labs/m03l02/) | Pro |
| 3.3 | [Merging: Fast Forward Or A Merge Commit](https://learnsome.tech/learn/git-course/m03l03) | [6 labs](labs/m03l03/) | Pro |
| 3.4 | [Rebase: The Same Work, A Different History](https://learnsome.tech/learn/git-course/m03l04) | [5 labs](labs/m03l04/) | Pro |
| 3.5 | [Undoing: restore, reset, revert And stash](https://learnsome.tech/learn/git-course/m03l05) | [7 labs](labs/m03l05/) | Pro |

### Module 4: Remotes

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 4.1 | [What A Remote Actually Is](https://learnsome.tech/learn/git-course/m04l01) | [6 labs](labs/m04l01/) | Pro |
| 4.2 | [Clone, Forks, Push, And The Upstream Branch](https://learnsome.tech/learn/git-course/m04l02) | [2 labs](labs/m04l02/) | Pro |
| 4.3 | [Fetch Is Not Pull](https://learnsome.tech/learn/git-course/m04l03) | [3 labs](labs/m04l03/) | Pro |

### Module 5: Working With Other People

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 5.1 | [The Pull Request, And Branch Naming](https://learnsome.tech/learn/git-course/m05l01) | [3 labs](labs/m05l01/) | Pro |
| 5.2 | [Reviewing Code Well](https://learnsome.tech/learn/git-course/m05l02) | [1 lab](labs/m05l02/) | Pro |
| 5.3 | [Why Conflicts Happen](https://learnsome.tech/learn/git-course/m05l03) | [1 lab](labs/m05l03/) | Pro |
| 5.4 | [Resolving A Conflict, Line By Line](https://learnsome.tech/learn/git-course/m05l04) | [2 labs](labs/m05l04/) | Pro |

### Module 6: Rewriting History, Tags And Workflows

| # | Lesson | Labs | Access |
| --- | --- | --- | --- |
| 6.1 | [Amend, And The One Hard Rule](https://learnsome.tech/learn/git-course/m06l01) | [3 labs](labs/m06l01/) | Pro |
| 6.2 | [Interactive Rebase: Squash, Reorder, Reword](https://learnsome.tech/learn/git-course/m06l02) | [3 labs](labs/m06l02/) | Pro |
| 6.3 | [Cherry Picking, Reflog, And Getting Work Back](https://learnsome.tech/learn/git-course/m06l03) | [2 labs](labs/m06l03/) | Pro |
| 6.4 | [Investigating History: blame, bisect And worktree](https://learnsome.tech/learn/git-course/m06l04) | [3 labs](labs/m06l04/) | Pro |
| 6.5 | [Tags And Releases](https://learnsome.tech/learn/git-course/m06l05) | [2 labs](labs/m06l05/) | Pro |
| 6.6 | [Trunk Based Development Versus Git Flow](https://learnsome.tech/learn/git-course/m06l06) | – | Pro |

**Free** lessons are open to anyone with a free LearnSome.tech account; **Pro** lessons need a Pro membership to watch, run and grade on the site.

## Licence

- **Code** (starter files, `check` and `.learnsome/`, the dev container and the workflows) is under the [MIT licence](LICENSE).
- **Written text** (the READMEs, lab instructions, lesson text, exercises and questions) is under [CC BY-NC-SA 4.0](LICENSE-text.md): share and adapt it with attribution to LearnSome.tech, not commercially, under the same licence.
- The LearnSome.tech name and logo are not covered by either licence.

## Contributing and security

This repository is generated from the course. Report a broken lab or a content error [as an issue](../../issues/new/choose); see [CONTRIBUTING.md](CONTRIBUTING.md). Security reports go to [SECURITY.md](SECURITY.md).

© 2026 LearnSome.tech
