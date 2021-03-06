#!/usr/bin/env bash

# Synchs the release-next branch to master and then triggers CI
# Usage: update-to-head.sh

set -e
REPO_NAME=$(basename $(git rev-parse --show-toplevel))

# Reset release-next to upstream/main.
git fetch upstream main
git checkout upstream/main -B release-next

# Update openshift's master and take all needed files from there.
git fetch openshift master
git checkout openshift/master openshift OWNERS_ALIASES OWNERS 
git add openshift OWNERS_ALIASES OWNERS 
git commit -m ":open_file_folder: Update openshift specific files."

git push -f openshift release-next

# Trigger CI
git checkout release-next -B release-next-ci
date > ci
git add ci
git commit -m ":robot: Triggering CI on branch 'release-next' after synching to upstream/master"
git push -f openshift release-next-ci

if hash hub 2>/dev/null; then
   # Test if there is already a sync PR in 
   COUNT=$(hub api -H "Accept: application/vnd.github.v3+json" repos/openshift/${REPO_NAME}/pulls --flat \
    | grep -c ":robot: Triggering CI on branch 'release-next' after synching to upstream/[master|main]") || true
   if [ "$COUNT" = "0" ]; then
      hub pull-request --no-edit -l "kind/sync-fork-to-upstream" -b openshift/${REPO_NAME}:release-next -h openshift/${REPO_NAME}:release-next-ci
   fi
else
   echo "hub (https://github.com/github/hub) is not installed, so you'll need to create a PR manually."
fi
