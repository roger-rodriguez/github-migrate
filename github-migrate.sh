#!/bin/bash

echo "Reading $1"

while read line
do
        repo=$line
        echo "###"
        echo "Processing $repo"
				echo " "
        git clone --bare git@git.mydomain.com:$repo
        cd $repo.git
				echo " "
        echo "Creating repo in Github"
				echo " "
        curl -H "Authorization: token <token>" --data '{"name":"'$repo'"","private":true,"team_id":<teamid>}' https://api.github.com/orgs/myorg/repos
        echo "Pushing mirror to Github"
				echo " "
        git push --mirror git@github.com:myorg/$repo.git
        cd ..
        echo "Removing $repo.git"
				echo " "
        rm -rf "$repo.git"
        echo "Waiting 3 seconds"
        echo "###"
				echo " "
        sleep 3;
done < $1

exit
