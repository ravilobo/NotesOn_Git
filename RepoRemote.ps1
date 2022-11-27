<#
  - Clone is a copy of a repo 
  - repo can be bare or non-bare (development)

#>

git remote update # sync remote meta-data 

git remote
git remote -v # view the remote directory 
git remote rm orginx #remove the unwanted 

git pull origin main
git push origin main 
# or BETTER which also sets the remote as the upstream remote so can just to get pull in future
git push -u origin main

git fetch  # copies the remote, doesn't merge 
git pull   # fetch + merge 

# here's how to do fetch 
git fetch origin main 
git merge origin/main 

# creating repo 
# ----------------------------------------------------------------------------------------
# here are  3 ways to set-up git repository
# 1. create an empty one on web
# clone it to local
git clone https://github.com/ravilobo/share.git
git clone https://github.com/ravilobo/languages.git

#or youcan use github cli
choco install gh -y
gh repo clone ravilobo/languages.git

# 2. go into the folder locally
# from VScode start source control
# use the below lines
git remote add origin https://github.com/ravilobo/languages.git
git push -u origin main
# PUSH will send the changes to online

# 3.
# git init --initiate a repository
c:\MyFavFolder> git init
# a .git folder gets created
# you can drop this folder to stop version control
ctrl + shift + P (open command palette)
#select
Publish to github
select PUBLIC repo

# 4. copying a repo 
git clone sourceRepo TargetRepo 

# FAQ 
# ------------------------------------------------------------------------------------------
# How to set the default branch to main for a new repo? 
git config --global init.defaultbranch main  # local 
settings-> repositories-> repository default branch-> main # github
