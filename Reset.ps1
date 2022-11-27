<#
 - RESET 
 - moves a branch! 
 - a command to just move the branch! 
 - Other commands (commit, pull, merge, rebase) move the branch explicitly (as a side effect!)
#>

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

# anomaly
git reset HEAD menu.txt --hard # this doesn't work
git checkout HEAD menu.txt     # use this instead