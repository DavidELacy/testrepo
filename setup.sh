git remote add deploy ssh://lacyfamily@lacy.family:21098/home/lacyfamily/david.lacy.family/testrepo
git remote add all git@github.com:DavidELacy/testrepo.git
git remote set-url --add --push all git@github.com:DavidELacy/testrepo.git
git remote set-url --add --push all ssh://lacyfamily@lacy.family:21098/home/lacyfamily/david.lacy.family/testrepo
git fetch --all
git branch -u all/master
