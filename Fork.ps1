## Fork 
<#
- When you want to contribute to a opensource system 
- Instead of cloning to local 
- You make a remote clone
- This is called fork 
- From the fork you create a clone 
- Usually you do not have access to the original repo 
- So you commit to your fork 
- And create PULL REQUEST for the original repo admin 
- The original source is called UPSTREAM
#>


# This article has details 
# https://blog.robsewell.com/blog/source%20control/jupyter%20notebooks/azure%20data%20studio/dbatools/dbachecks/how-to-fork-a-github-repository-and-contribute-to-an-open-source-project/

# You cannot directly edit a public git repo (unless you are a COLLABORATOR)
# fork based collaboration is for occasional contributors, for frequenct use single repo 
# you need to fork it first 
# do it from your login (Top right)
# when you fork a repo it is copied to your github account  
# clone the repo to your local machine 

git clone https://github.com/ria-lobo/StretchDB.git

# now create a branch AwesomeNewFeature
# in VS Code, left bottom, click the git icon 
# give a meaningful name to the branch 
# make your changes 
git add . 
git commit -m 'my suggestions'
git push 
# you might get an exception first time. 
git push --set-upstream origin AwesomeNewFeature 

# compare and pull request on github 
# create pull request 
# If you make more changes to the code in the same branch in your local repository and push them, 
# they will automatically be added to this Pull Request whilst it is open. You can do this if the 
# maintainer or reviewer asks for changes.

# now got to main repo and accept the pull repo 
# at this point you can delete the branch 
git pull origin main 
git branch 
git switch main 
git branch -D riastretch #delete the branch 
git status 


#region update the fork
#add remote for upstream  
1. git remote add upstream <path_to_repo>
2. git fetch upstream 
#merge into your LOCAL master 
3. git merge upstream/master master 
# or use one command 
git pull upstream master 
# push to YOUR remote (fork)
4.git push origin master 
#endregion 

#region 
# There's no easier way to do this. 
# go SETTINGS of your repo 
# and DELETE from there. 
#endregion 

