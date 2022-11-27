<#
Values and Keys


echo 'Apple Pie'| git hash-object  --stdin #This value is same any where in the world for this string!

# run this command from a git repo 
echo 'Apple Pie'| git hash-object  --stdin -w 
# You will notice a hash like this 
157cb7be4778a9cfad23b6fb514e364522167053
In .\git folder you will see a subfolder with the name of first 2 characters of the hash (.git\objects\a7)
inside you will see a file with rest of the hash: 7cb7be4778a9cfad23b6fb514e364522167053
#>

git cat-file a7c165f3ae55c0ee121f98140e3b4c750f325d06 -t
blob 

git cat-file a7c165f3ae55c0ee121f98140e3b4c750f325d06 -p
Apple Pie




