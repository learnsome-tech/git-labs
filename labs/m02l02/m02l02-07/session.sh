#!/usr/bin/env bash
# Advanced Git Internals & Distributed Workflows — lesson m02l02 — Committing, And What A Good Message Says
# https://learnsome.tech/courses/git-course/watch?lesson=m02l02
# © LearnSome.tech
# m02l02-07 - The body answering a question the diff cannot
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
mkdir -p service
cd service
git init -q
printf 'timeout = 5\n' > config.ini
git add config.ini
git commit -q -m 'Add the request timeout'
tick
printf 'Retry three times before giving up\n\n' > msg
printf 'One retry was not enough on mobile networks, and five made\n' >> msg
printf 'the wait worse than the failure. A flaky network test settled\n' >> msg
printf 'the argument at three.\n' >> msg
printf 'timeout = 5\nretries = 3\n' > config.ini
git commit -q -a -F msg
} > /dev/null 2>&1
set +e

# --- what the video shows ---
echo "$ git log -1"
git log -1
echo "$ git diff --stat HEAD~1 HEAD"
git diff --stat HEAD~1 HEAD
