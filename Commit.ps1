# stage and commit 
git add . 
git commit -m 'commit message'
git push origin main

# amend 
# only works on CURRENT commit 
git commit --amend # this will open an editor, where you can update commit message 
git commit --amend -m "an updated commit message" # you can do this as well. 

# amending files 
# Edit hello.py and main.py
git add hello.py
git commit 
# Realize you forgot to add the changes from main.py 
git add main.py 
git commit --amend --no-edit

