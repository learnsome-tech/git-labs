#!/usr/bin/env bash
# m02l03-07 - Rejected, accepted, and the way around it
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
printf 'health: ok\n' > api.txt
git add api.txt
git commit -q -m 'feat(api): add a health endpoint'
tick
printf 'health: ok\nlogging: on\n' > api.txt
git add api.txt
cat > .git/hooks/commit-msg <<'HOOK'
#!/bin/sh
# git passes the path of the message file as the first argument
types='feat|fix|docs|style|refactor|perf|test|build|ci|chore|revert'
subject=$(head -n 1 "$1")
if echo "$subject" | grep -Eq "^($types)(\([a-z0-9-]+\))?!?: .+"; then
  exit 0
fi
echo "commit-msg: subject is not a conventional commit" >&2
echo "  want: type(optional scope): description" >&2
echo "  got:  $subject" >&2
exit 1
HOOK
chmod +x .git/hooks/commit-msg
} > /dev/null 2>&1
set +e

# --- what the video shows ---
echo "$ git commit -m 'wip logging' 2>&1; echo \"exit code $?\""
git commit -m 'wip logging' 2>&1; echo "exit code $?"
echo "$ git commit -m 'feat(log): record every failed probe'"
git commit -m 'feat(log): record every failed probe'
echo "$ git log --oneline"
git log --oneline
echo "$ git commit --allow-empty --no-verify -m 'wip again'"
git commit --allow-empty --no-verify -m 'wip again'
