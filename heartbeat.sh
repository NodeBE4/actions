#!/bin/bash

date=$(date '+%Y-%m-%d');
echo -en "# actions\n\nunlimited github action minutes in public repository for secret tasks\n\n${date}" > README.md
git add README.md
git commit --allow-empty -m"heartbeat task ${date}";
git push