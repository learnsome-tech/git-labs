#!/usr/bin/env bash
# m02l01-03 - Staging one path, and the split that creates
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
mkdir -p cookbook
cd cookbook
git init -q
printf 'Pancakes\n\nMix flour and milk.\nFry in butter.\nServe with syrup.\n\nBread\n\nMix flour and water.\n\nBake for an hour.\n' > recipes.md
printf 'flour two pounds\nsugar one pound\nbutter half a pound\n' > prices.md
git add recipes.md prices.md
git commit -q -m 'Add recipes and prices'
tick
printf 'flour two pounds\nsugar one pound and a half\nbutter half a pound\n' > prices.md
printf 'Pancakes\nServes two.\n\nMix flour and milk.\nFry in butter.\nServe with syrup.\n\nBread\n\nMix flour and water.\n\nBake for an hour.\nCool on a rack.\n' > recipes.md
} > /dev/null 2>&1
set +e

# --- what the video shows ---
echo "$ git add prices.md"
git add prices.md
echo "$ git status"
git status
