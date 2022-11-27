#what is git blame?
# shows the history of changes for every line 
# The line starung with ^ means that the line existed since the very first day
git blame filename
git blame -L 10,30  VeryLargeFile.ps1 
git blame -L 10,+20 VeryLargeFile.ps1 # as as above
git blame FAQ.ps1 --since=1.week