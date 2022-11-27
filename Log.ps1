git log --oneline --decorate --graph --all

git log
git log --oneline
git log -3 --oneline
git log head~5..head^ --oneline
git log --graph --decorate --oneline
git log --oneline --decorate --graph --all
git log --grep apples --oneline # show the commits with string apple
git cat-file -p 569f995
git log origin main #includes remote logs as well. Note: you need to do git fetch first 
git log head..origin/main #you can do this as well 
                        
git log --grep apples --oneline
