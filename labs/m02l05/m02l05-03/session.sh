#!/usr/bin/env bash
# Advanced Git Internals & Distributed Workflows — lesson m02l05 — Ignoring Files, And The Tracked File Trap
# https://learnsome.tech/courses/git-course/watch?lesson=m02l05
# © LearnSome.tech
# m02l05-03 - The trap: a rule added after the file was committed
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
git init -q
printf 'name: checkout\n' > app.yaml
git add app.yaml
git commit -q -m 'Add the app config'
tick
printf 'API_TOKEN=hunter2\n' > service.env
} > /dev/null 2>&1
set +e

# --- what the video shows ---
echo "$ git add service.env"
git add service.env
echo "$ git commit -m 'Add the service token'"
git commit -m 'Add the service token'
echo "$ printf 'service.env\n' > .gitignore"
printf 'service.env\n' > .gitignore
echo "$ printf 'API_TOKEN=hunter3\n' > service.env"
printf 'API_TOKEN=hunter3\n' > service.env
echo "$ git status --short"
git status --short
