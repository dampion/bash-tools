#!/bin/bash
# OR | , AND .*
# ex 2020\|2021-0[0-6]
# delete remote tags
git tag -l | grep $1 | xargs -n 999 git push --delete origin
# delete local tags
git tag -l | grep $1 | xargs -n 999 git tag -d
# echo $1