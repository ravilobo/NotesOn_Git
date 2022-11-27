# Git
## Disclaimer
These are my notes on Git, collected over a period of time. As such, they maynot be much useful for a beginner; on the other hand, having these notes at one location, might help as a refresher for someone who is not new to Git. 

--- 
## insight 
- Pros
  - code change tracker 
  - You don't need retain old code commented out in the scripts
  - Branches help in having multiple versions of the code!
  - This means you can have a free and paid version of the app!   
  - easy to move back and forth in time!
  - Collaboration is the biggest thing. 
  - Fast
  - distributed
  - simple
  - .git with entire history is right under the project folder
- Not a backup tool! 
- peer to peer. all repos are equal 
- Stage (index) provisions selective commit
- commits happen from stage!
- Switching branch changes the content of local folder and stage!
- Each commit is the entire snapshot of the repo 
- Don't format other people's code
- use descriptive comments
- commit small related items
- Git repo holds the history for the entire project life cycle
- Access to .Git is access to all history
- SHA1 value for 2 files across folders, machines, orgnaizations is same!
- Tag is static; branch is dynamic. If you need a point-in-time snapshot use a tag!
- Git is DEFINITIVE
  - you need to provide every command explicitly 
  - for e.g. there's no automatic commit 
- Altough, a baclup/tracking tool; it doesn't do those things, unless you explicit commit
- Commit 
  - A commit with more than one children is the begining of a branch 
  - A commit with more than one parent is a merge
  - Only one commit without a patent is root!
- Git REVERT works on a commit not a file, whereas RESTORE works on a file
- branch is an entry point for a history of commits!
- don't use when
  - project has large binary files e.g. .exe, .mpg, .jpg
  - not user friendly

## Concepts
- Fetch downloads commits from remote to local 
  -  Does not merge 
  -  Pull = Fetch + merge 
-  Push uploads commits, branches or tags to remote repository 
-  STAGE
   -  aka INDEX
   -  ADD is adding to stage
      -  note ADD doesn't touh the repo, COMMIT does
   -  Unique only to Git!
   -  You commit only from index!
   -  Git rm is not opposie of git add, since it removes files from work area as well! 
-  HEAD
   -  Is a pointer
   -  Head = current branch
   -  Head points to the current branch which points to the lastest commit
   -  sometimes HEAD points directly to the commit 
      -  this is called DETACHED HEAD
      -  do a git checkout master to come out of it 
- UNTRACKED file is the one which is ONLY in working area
- REBASE 
  - fixing the history 
  - don't fix history on a public repo 
  - similar but cleaner than merge 
- Cherry picking is choosing a commit from one branch and apply it onto another.
- Blame 
  - helps in checking who made the change to every line 
- merge forward 
  - the head is on the same branch where new changes are applied 
  - in this case, git just needs to move the head 
- detached head 
  - you have checked out single commit from history 
  - you are no more on a branch 
- Fork
  - way of commiting to a public repo 
- Stash
  - save your work!
- Revert 
  - undo ONE old commit 
- repo types
  - bare 
    - no working tree 
    - you don't directly work in a bare repo 
    - git init --bare .
    - used for sharing among many folks
    - you push to bare repo 
    - guthub is a bare repo
  - non-bare (Development)
## 4 areas
- Working area
- Stage (index)
- Repo
- Stash
  - Are to keep your work aside, temporarily 
  - When you do git stash 2 things happen 
    - Your work area is copied to temp area stash 
    - Current commit from repo is copied to work area 
## Git objects:
- 4 types
  - Blob (content)
  - Tree (folder)
  - Commit
    - immutable
  - Annotated tags
## notes
- Not great for conflict resolution
- Never rebase a shared commit 
- Never change shared history 
- Don't FORMAT someone else's code
- GIT HUB MIGRATION TOOL to retain the VERSIONING history 
- Branch is also called feature branch 
- Trunk based development is where every commit happens to the master   
- GitOps is all about keeping your YAML in GitHub   
## Types of VC
  - centralized
    - Once you check-out a file, no one else can work on it 
    - File gets locked 
    - You have copies of only the files you checked out
  - Distributed 
    - Everyone has a local copy
    - All repos are equal

## Nuggets 	
 - 2005
 - 2008 GitHUb
 - Git = grumpy old man 
 - Linus Torvalds
 - 2018 MS acquired GitHub $7.5B
 - GitHub/gitlab source-control-as-a-service

