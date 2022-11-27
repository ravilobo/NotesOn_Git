<#
  - Detached Head 
  - Detached head means you are no longer on a branch, you have checked out a single commit in the history
  - if you make any changes and commit, your new commit won’t belong to any branch and will be unreachable, except by the exact commit hash.
  - unreachable commits will be eventually garbage collected 
#>

git checkout head~2 # this will create a detached head 

# to fix run this 
git checkout master


# option 2 
# -----------------------------------------------------------------------------------------
git checkout head~1
# at this point you are in detached head 
# you can come out of this, by the following command. 
git switch -
# if you need these changes then you need to create a new branch 
git switch -c newBranch
#make you changes here 

git switch main #after the changes switch to main 
git merge newBranch #followed by commit 

# option 3 
# -----------------------------------------------------------------------------------------
# this won't create a detached head 
git restore --source faa0b9e Test1.ps1

#TIME TRAVEL
# -----------------------------------------------------------------------------------------
#If you want to temporarily go back to it, fool around, then come back to where you are, 
#all you have to do is check out the desired commit:
git checkout 56rdr6

# This will detach your HEAD, that is, leave you with no branch checked out:
# once you are done, do one more check out for the latest commit 

#Or if you want to make commits while you're there, go ahead and make a new branch while you're at it:
git checkout -b old-state 0d1d7fc32
#To go back to where you were, just check out the branch you were once again




