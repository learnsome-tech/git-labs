#!/usr/bin/env bash
# m02l02-06 - A message from a file, and a message from standard input
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
printf 'parser = 3.2\n' > config.ini
git add config.ini
git commit -q -m 'Add the parser pin'
tick
printf 'Pin the CSV parser to the previous release\n\n' > message.txt
printf 'The vendor release reorders duplicate headers, and our importer\n' >> message.txt
printf 'reads those columns by position, so imports shift by one column.\n\n' >> message.txt
printf 'Upgrading properly means rewriting the importer, which is a week\n' >> message.txt
printf 'we do not have this sprint. This pin is a holding action, not a\n' >> message.txt
printf 'preference.\n\n' >> message.txt
printf 'Rejected: patching the vendor file in place, because the next\n' >> message.txt
printf 'install would quietly undo it.\n\n' >> message.txt
printf 'Refs: #214\n' >> message.txt
printf 'Co-authored-by: Grace Hopper <grace@example.com>\n' >> message.txt
printf 'parser = 3.1\n' > config.ini
git add config.ini
} > /dev/null 2>&1
set +e

# --- what the video shows ---
echo "$ git commit -F message.txt"
git commit -F message.txt
echo "$ printf 'retries = 3\n' >> config.ini"
printf 'retries = 3\n' >> config.ini
echo "$ git commit -a -F -"
git commit -a -F - <<'GIT_COURSE_STDIN'
Retry three times before giving up

One retry was not enough on mobile networks, and five made
the wait worse than the failure. A flaky network test settled
the argument at three.
GIT_COURSE_STDIN
echo "$ git log --oneline"
git log --oneline
