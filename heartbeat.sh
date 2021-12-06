#!/bin/bash
git config user.name "${USERNAME1_GITHUB}";
git config user.email "${USERNAME1_GITHUB}@github.com";
git config pull.rebase false;

date=$(date '+%Y-%m-%d');
echo -en "# actions\n\nunlimited github action minutes in public repository for secret tasks\n\n${date}" > README.md
git add README.md
git commit --allow-empty -m"heartbeat task ${date}";
git push origin main
