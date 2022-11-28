<#
 - any non tracked local branch is called TOPIC OR DEVELOPMENT branch 
 - Types 
   stable   : can do a prod deployment any time
   unstable 
 - release branch 
   you can have multiple
   This way if there's a bug on a particular relases, you can fix it only on that branch. 
#>

# How to find remote branch name?
git status -sb
git status
git remote -v #remote directory
git branch -vv
git branch -v
git remote show origin

git branch       # list the current branch 
git branch --all # includes REMOTE branches as well 
git branch -a    # same as above
git branch -r    # 

git branch ideas # creates a new branch 
git switch ideas # you can use CHECKOUT as well for switching branches 
# however switch is newer and was introduced only for switching branches 
# checkout does other things as well 
# switch changes local folder content
# switch also moves head, which is a pointer to the latest commit 
# git fetch will copy the branches created remote to locally 
git branch 
git switch main 
git merge ideas 
git branch -d ideas #delete a branch 

git checkout -b Testing #creating branch 

# conflict 
# in the case of a conflict you'll see the >>>>>>>>>>>>> in the file 
# fix it manually 
# when you do git add, you are telling git that conflict has been resolved. 
# do a commit 
# do this from main 

cat .git/head #This file has the pointer for a current branch 
cat C:\ravi\Languages\.git\head


# creating a local branch and sending it to github  
git branch FavBranch
git switch Favbranch 
cat myCatFile.txt 
git add . 
git commit -m 'my cat file'
git push -u origin FavBranch # -U tells get to track upstream 

# deleting a branch locally and remotely 
git branch 
git branch -d nogood # delete branch locally 
git push -d origin  nogood # delete branch remotely 
git fetch --all --prune #cleanup 

#creating branch from a starting point 
git checkout -b old-project-state 0ad5a7a6 # here you are safely creating a new brach, that can be latter merged