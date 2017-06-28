#!/bin/sh
# git-create-branch <branch_name>
#  $# = 0
if [ $# -ne 1 ]; 
then
         echo 1>&2 Usage: $0 branch_name #File descriptor 1 is the standard output (stdout).
					 #File descriptor 2 is the standard error (stderr)
         exit 127
fi

branch_name=$1
git push origin master:refs/heads/$branch_name
echo "git push origin master:refs/heads/$branch_name"
git fetch origin
git checkout --track -b $branch_name origin/$branch_name
git pull
