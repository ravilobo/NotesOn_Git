
#install git
choco install git -y
choco upgrade git -y
git update-git-for-windows # prefer choco 


#region global settings
git --version
git config --global --list
git config --global -e # use this command to open the config file in vs code

git config --global init.defaultbranch main  
# config
# there are 3: local, global and system with increasing hirearchy
C:\Ravi\Languages\.git\config
git config --global user.name # list
git config --local  user.name
git config --system  user.name

git config --global user.name 'Ravi Lobo' # set
git config --global user.email 'ravi.lobo@yahoo.com'

git config --list --show-origin #where things coming from :q

# strips carriage returns on saving files to a repo
# TRUE adds the CRs back in when you check files out to the working directory
git config --global core.autocrlf true

# editing the config file
git config --global --unset user.name #removes this setting
git config --global --edit
git config --global --remove-section user

# setting vscode as your default editor for git
git config --global core.editor "code --wait"
git config --global -e # use this command to open the config file in vs code
git difftool #invoke the diff tool
# add these lines in config to set vscode as the difftool 
[diff]
tool = vscode
[difftool]
prompt = false
[difftool "vscode"]
cmd = code --wait --diff $LOCAL $REMOTE
