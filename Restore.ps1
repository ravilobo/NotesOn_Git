<#
- Since pointer operations with CHECKOUT may cause a detached-head, use RESTORE when possible for FILE operations 
#>
git restore myfile.txt                      # (default) restore a single file from repo to stage and work area 
git restore myfile.txt --staged --worktree  # same as above, THINK AS WHERE TO restore
git restore myfile.txt --staged   # remove only from stage 

git restore --staged *.css
git restore --source 7173808e index.html
git restore --source 7173808e index.html
git restore --source master~2 index.html