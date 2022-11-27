# what is cherry picking? 
copy a commit from one branch to another 

# How to find Git version?
git version

# What is head?
Head is a refernce to a branch. (A pointer to a pointer)
There is alway one HEAD

# How to resolve conflits?
when a conflict happens, you see <<<<<<<<<< >>>>>>>>>>> in the file in working area
modify the content
and commit the file

# How do I make Git forget about a file that was tracked, but is now in .gitignore?
git rm --cached redundant_file
git rm --cached redundant_folder -r  

git status -s
git add .
git commit -m 'Dropped old folder'
git push origin master
add the file to .gitignore


#region MOVE MASTER to MAIN
https://stevenmortimer.com/5-steps-to-change-github-default-branch-from-master-to-main/
# Step 1 
# create main branch locally, taking the history from master
git branch -m master main

# Step 2 
# push the new local main branch to the remote repo (GitHub) 
git push -u origin main

# Step 3
# switch the current HEAD to the main branch
git symbolic-ref refs/remotes/origin/HEAD refs/remotes/origin/main

# Step 4
# change the default branch on GitHub to main
# https://docs.github.com/en/github/administering-a-repository/setting-the-default-branch

# Step 5
# delete the master branch on the remote
git push origin --delete master

#endregion 


#misc 
git status # shows current modified files 
git status --short 
git status -s 



