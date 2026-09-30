#!/usr/bin/env bash
# m02l04-06 - The patch flag: the change itself, one file at a time
#
# Runs the session from the video in a throwaway repository under /tmp,
# with the same fixed author, clock and settings the course records with,
# so the object ids and dates match what is on screen.

GIT_COURSE_HOME="$(cd "$(dirname "$0")" && pwd)"
GIT_COURSE_ROOT="$(mktemp -d "${TMPDIR:-/tmp}/gitcourse-XXXXXX")"
trap 'rm -rf "$GIT_COURSE_ROOT"' EXIT
export HOME="$GIT_COURSE_ROOT"
mkdir -p "$GIT_COURSE_ROOT/work"
cd "$GIT_COURSE_ROOT/work"

set -u
export TZ=UTC LC_ALL=C LANG=C
export GIT_CONFIG_SYSTEM=/dev/null
export GIT_CONFIG_GLOBAL="$HOME/.gitconfig"
export GIT_AUTHOR_NAME='Ada Lovelace' GIT_AUTHOR_EMAIL='ada@example.com'
export GIT_COMMITTER_NAME='Ada Lovelace' GIT_COMMITTER_EMAIL='ada@example.com'
export GIT_EDITOR=true GIT_PAGER=cat PAGER=cat GIT_TERMINAL_PROMPT=0 GIT_MERGE_AUTOEDIT=no
GIT_COURSE_CLOCK=1709546400
export GIT_AUTHOR_DATE="$GIT_COURSE_CLOCK +0000" GIT_COMMITTER_DATE="$GIT_COURSE_CLOCK +0000"
# tick: move the clock on an hour, so a history has dates in order.
tick() { GIT_COURSE_CLOCK=$((GIT_COURSE_CLOCK + 3600)); export GIT_AUTHOR_DATE="$GIT_COURSE_CLOCK +0000" GIT_COMMITTER_DATE="$GIT_COURSE_CLOCK +0000"; }
cat > "$GIT_CONFIG_GLOBAL" <<'GIT_COURSE_FILE_EOF'
[init]
	defaultBranch = main
[core]
	abbrev = 7
	pager = cat
[color]
	ui = false
[commit]
	gpgsign = false
[tag]
	gpgsign = false
[gc]
	auto = 0
GIT_COURSE_FILE_EOF

# --- setup: the history this panel starts from, off screen ---
set -e
{
mkdir -p notes
cd notes
git init -q
printf '# notes\nA tiny notes parser.\n' > README.md
git add README.md
tick
git commit -q -m 'docs: add the readme'
printf 'def split_line(line):\n    return line.split(":", 1)\n' > parser.py
git add parser.py
tick
git commit -q -m 'feat: add the parser'
for _ in $(seq 24); do tick; done
printf 'import sys\nfrom parser import split_line\nprint(split_line(sys.argv[1]))\n' > cli.py
git add cli.py
tick
GIT_AUTHOR_NAME='Grace Hopper' GIT_AUTHOR_EMAIL='grace@example.com' git commit -q -m 'feat: add the command line entry point'
printf 'def split_line(line):\n    if not line:\n        return []\n    return line.split(":", 1)\n' > parser.py
git add parser.py
tick
git commit -q -m 'fix: handle an empty line in the parser'
for _ in $(seq 24); do tick; done
printf 'def parse_line(line):\n    if not line:\n        return []\n    return line.split(":", 1)\n' > parser.py
printf 'import sys\nfrom parser import parse_line\nprint(parse_line(sys.argv[1]))\n' > cli.py
git add parser.py cli.py
tick
git commit -q -m 'refactor: rename the parse helper'
printf 'from parser import parse_line\nassert parse_line("a:b") == ["a", "b"]\nassert parse_line("") == []\n' > test_parser.py
git add test_parser.py
tick
git commit -q -m 'test: cover the parser'
} > /dev/null 2>&1
set +e

# --- what the video shows ---
echo "$ git log --oneline --patch -1 -- parser.py"
git log --oneline --patch -1 -- parser.py
