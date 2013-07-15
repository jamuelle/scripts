#!/bin/bash
DIR=$1
SVN=`svn info $DIR | /bin/egrep URL | sed "s|URL: ||" | sed "s|$DIR||"`

for i in `find $DIR -not -wholename "*/.svn/*"`
do
  svn unlock --force $SVN/$i
  svn unlock --force $i
done
