<#
  - In Git terms, a "checkout" is the act of switching between different versions of a target entity.
  - Since pointer operations with CHECKOUT may cause a detached-head, use RESTORE when possible for FILE operations 
  - checkout moves the HEAD! then copies the data from repo
  - use SWITCH for branching operations
  - use RESTORE for pointer operations 

#>

git checkout another_branch           # use SWITCH to avoid confusion 
git checkout -b third_branch          # simultaneously creates and checks out 
git checkout -b fourth_branch fg12W3d # new branch from a starting point 

git checkout 8a7b201 index.html       # This will create a detached-head, use RESTORE instead. 
git checkout 8a7b201 index.html MyFile.ps1 MyfIle2.ps1  
git checkout HEAD index.html          # last committed version of the file

# misc 
# In git, a ' -- ' before the file list tells git that all the next arguments should be interpreted as filenames, 
# not as branch-names or anything else. 
git checkout c5f567 -- file1
git checkout c5f567 -- file1 file2

# This that only checkout can do 
checkout a tag
checkout a commit #detahce head 

