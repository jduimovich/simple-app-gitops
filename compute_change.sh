DELTA=changed_directories
git diff --name-only HEAD HEAD~1 > $DELTA 
if grep deploy $DELTA
then
    export ONLY_DEPLOY_CHANGES=true 
    echo "ONLY DEPLOY" 
else
    export ONLY_DEPLOY_CHANGES=false 
    echo "Files other than DEPLOY changes" 
fi

echo Files Changed
cat $DELTA 
rm -rf $DELTA

echo "ONLY_DEPLOY_CHANGES=${ONLY_DEPLOY_CHANGES}" | tee -a $GITHUB_ENV  