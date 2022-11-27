# Making changes in working area. SINGLE FILE (file operation)
# 1 delete a file
git rm file-name                    # removes file from working area (also from stage!)
git rm redundantfile --cashed       # removes only from STAGE
git rm RedundantFOLDER -r
# 2 restore a file
git checkout 8a7b201 index.html     # This will create a detached-head, use RESTORE instead. 
git restore myfile.txt              # restore a single file from repo to stage and work area 
git restore myfile.txt --staged --worktree     # same as above 
git restore --source 8a7b201 index.html

# Making changes in working area. (pointer operation)
# 1 restore a commit 
git RESET HEAD --hard               # wipes out work area and stage
git checkout master                 # wipe out working area & stage 
git reset  fbde45 --hard            # resets from repo to STAGE & Working area 
git checkout                        # to discard changes in the working directory 
git checkout b65a47232ecdde0        # go to a past version (This will create a detached head)
# 2 
echo 'hello world' > test3.ps1
git add .
git stash       # at this point test3.ps1 will be moved to stash & repo is copied to work area 
git stash list 
git stash drop 
git stash list 


#How to UNSTAGE a single FILE?
# 1
git rm redundantfile --cashed    #removes only from STAGE
# 2
git reset HEAD menu.txt          # current commit from repo to stage  ONE FILE
git reset HEAD menu.txt --mixed  # current commit from repo to stage  ONE FILE
# 3
git restore myfile.txt --staged 

# How to undo stage (pointer operation)?
You need to use RESET 

# What is RESET?
Moves HEAD to a older commit
Reset options
HARD            moves the header in repo and copies the snapshot to  -> STAGE & WORKING AREA
MIXED (default) moves the header in repo and copies the snapshot to  -> STAGE
SOFT            moves the header in REPO only

git reset  fbde45 --hard  # resets from repo to STAGE & Working area 
git reset  fbde45 --mixed # default resets the branch from repo to STAGE only
git reset  fbde45 --soft  # resets in repo only. 

git reset HEAD            # stage is updated as repo 
git reset HEAD --mixed    # same as above
git RESET HEAD --hard     # update stage and working area from repo 
git reset HEAD menu.txt   # current commit from repo to stage ONE FILE
git reset HEAD menu.txt --mixed # same as above


#RESTORE 
RESTORE is a new command 
it can be used to unstage! 

git RESTORE --staged index.html # remember this is UNSTAGING!!! 
git restore --staged index.* 
git restore index.html          # this will overwrite working area from repo 

git restore --source 7173808e index.html
git restore --source master~2 index.html
# The first example will restore the file as it was in commit #7173808e,
# while the second one will restore it as it was "two commits before the current tip of the master branch".


# advanced 
git revert --no-commit 0766c053..HEAD
git commit -m 'rollback has been done!'


# How to revert to a older commit in remote repo?
# You have cmitted versions 1, 2, 3, 4 and 5 to remote repo. You want to reset to v 2 and discard everything. 
git reset bc505d5 --hard
git push origin main --force

# How can I rename a file?
git mv readme.txt readme.md

# How to check what changes I made in my working directory?
# VS code is the best option for this
git diff         # when no parameters provided working area & stage are compared 
git difftool     # same as above 
git diff --stage # compare stage to repo 
