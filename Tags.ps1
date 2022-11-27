#tags are like branches
#branches move on commit, tags don not though

<#
types: lightweight and annotated.
A lightweight tag is very much like a branch that doesn’t change — it’s just a pointer to a specific commit.
Annotated tags, however, are stored as full objects in the Git database. 
They’re checksummed; contain the tagger name, email, and date; have a tagging message; 
#>

git tag # list the tags
git tag v2.0
git tag v2.1 -a -m 'This is an annotated tag!'
git tag -d v2.1 # delete a tag
git tag

git checkout v2.0 #switch doesn't work with tags

git show v2.0
git show v2.1

# tag later 
$ git tag -a v1.2 9fceb02

# checking out tags
git checkout v2.0
# this will put your repo in detached head!
# if you make any changes and commit, your new commit won’t belong to any branch and will be unreachable, except by the exact commit hash.
# to avoid this create a branch 

git checkout -b version2 v2.0


# simulating a tag restore 
# -----------------------------------------------------------------------------------------------------------
echo 'commit 1' > Test3.ps1
echo 'commit 1' > Test4.ps1
git add Test3.ps1 
git add Test4.ps1 
git commit -m 'v1'
git tag v1.0 -a -m 'v1 tag' 

echo 'commit 2' >> Test3.ps1
echo 'commit 2' >> Test4.ps1
git add Test3.ps1 
git add Test4.ps1 
git commit -m 'v2'

git checkout -b v1 v1.0
# you'll notice that both files have changed. Now they have only the first commit 

git status
git branch 
git switch main 
git branch 
git branch -d v1
git branch 
git status 