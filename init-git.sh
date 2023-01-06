HUB=git@github.com:DavidELacy/testrepo.git
DEPLOY=ssh://lacyfamily@lacy.family:21098/home/lacyfamily/david.lacy.family/testrepo

git clone --no-checkout $HUB .git.temp
mv .git.temp/.git .git
rm -rf .git.temp
git add .
git remote rename origin hub
git remote add deploy $DEPLOY
git remote add all $HUB
git remote set-url --add --push all $HUB
git remote set-url --add --push all $DEPLOY
git fetch all
git branch --set-upstream-to all/master
