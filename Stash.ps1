# temp localtion for your work 
# like a clipboard 

# When you do git stash 2 things happen 
# 1. Your work area is copied to temp area stash 
# 2. Current commit from repo is copied to work area 

git stash
git stash push # same as above 
git stach pop 
git stash -m 'WIP: temp detour to fix a prod issue.'
git stash --include-untracked
git stash list # see the content of a stash

# normally, pop will clear the stash 
git stash pop 
# if you want to retain the stash, for future use, use apply 
git stash apply 
# however you'll have to drop the stash yoruself 
git stash drop 
# so 
 git stash pop = git stash apply + git stash drop 

# drop and clear 
git stash drop  # drops single entry 
git stash clear # clear all stash 

# if you want to save the work in working area do a stash first 
git stash
git reset --hard 0d1d7fc32
git stash pop

# alternate way to clear your work folder 
echo 'hello world' > test3.ps1
git add .
git stash       # at this point test3.ps1 will be moved to stash & repo is copied to work area 
git stash list 
git stash drop 
git stash list 