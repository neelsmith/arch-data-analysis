#!/usr/bin/env /bin/bash
#
# Read list of github repos, git clone or git pull as needed.
#
export GIT=`which git`
export PWD=`which pwd`
export LS=`which ls`
export CP=`which cp`
export CAT=`which cat`

export ROOT=`pwd`

for REPONAME in $(cat repos.txt) ; do
  REPOPATH=https://github.com/$REPONAME/clas299
  echo $REPOPATH
  if [ ! -d $REPONAME ]
  then
    echo "Making directory " $REPONAME
    mkdir $REPONAME
    echo "Cloning " $REPOPATH
    (cd $ROOT/$REPONAME && $GIT clone $REPOPATH)
  else
    echo "Pulling in " $ROOT/$DIR
    (cd $ROOT/$REPONAME/clas299 && $GIT pull)
  fi
  cd $ROOT
done;
