<#
revert 
- The purpose of the git revert command is to remove all the changes a single commit made to your source code repository. 
- if a past commit added a file named index.html to the repo, a git revert on that commit will remove the index.html file from the repo. 
- If a past commit added a new line of code to a Java file, a git revert on that commit will remove the added line.
- revert is different than reset in the sense that in reset, you'll lose the changes aafter the reset commit 

#>
git revert 4945db2