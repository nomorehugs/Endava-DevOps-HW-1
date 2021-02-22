#!/bin/bash

# My Variables
IM_GITHUB_REPO="Endava-DevOps-HW-1"
IM_DATE_FILE="date.txt"
IM_EXECUTE_PATH=`pwd`

# 01. Setting my git username and email

git config --global user.name "Ivan Marinov"
git config --global user.email "vankata.89@gmail.com"

# 02. Create directory for my Github Project

mkdir "$HOME/$IM_GITHUB_REPO"

# 03. Enter the directory

cd "$HOME/$IM_GITHUB_REPO"

# 04. Initialise the directory as a git repository

git init

# 05. Adding my GitHub repo as original

git remote add origin "https://github.com/nomorehugs/$IM_GITHUB_REPO.git"

# 06. Copying the script into repo directory. $0 - mean the file/script that is executing now.

cp "$IM_EXECUTE_PATH"/"$0" "$HOME"/"$IM_GITHUB_REPO"/.

# 07. Check the git status

git status

# 08. Adding the file/script to the repo

git add "$0"

# 09. Commit the first changes

git commit -m "Adding the script itself to repo"

# 10. Push the first changes

git push -u origin master

# 11. Print the date to a file

date > "$IM_DATE_FILE"

# 12. Adding date file to the repo

git add "$IM_DATE_FILE"

# 13. Commit the second changes

git commit -m "Adding date file to the repo"

# 14. Push second changes

git push

# 15. Create a new branch

git checkout -b NewBranch

# 16. Print the date and append to same file

date >> "$IM_DATE_FILE"

# 17. Show the different part of the date file

git diff "$IM_DATE_FILE"

# 18. Commit the third changes

git commit -a -m "Appending the new date in the date file"

# 19. Push the last changes

git push -u origin NewBranch
