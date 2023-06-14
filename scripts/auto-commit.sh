#!/bin/bash

# Directory where your Git repositories are located
repo_dir="$HOME/code"

while true; do
    # Change to the repository directory
    cd "$repo_dir"

    # Iterate through each repository
    for repo in */; do
        # Change to the repository directory
        cd "$repo"

        # Check if there are any unstaged changes
        if [[ -n $(git status --porcelain) ]]; then
            # Add all changes
            git add -A

            # Commit changes with a default commit message
            git commit -m "Minor Fix: $(date '+%Y-%m-%d %H:%M:%S')"

            # Push changes to the current branch
            git push origin HEAD
        fi

        # Change back to the original directory
        cd "$repo_dir"
    done


    # Sleep for 3 minutes
    sleep 180
done
