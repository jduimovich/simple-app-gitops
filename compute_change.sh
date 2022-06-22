DELTA=changed_directories
git diff --name-only HEAD HEAD~1 > $DELTA
export ONLY_DEPLOY_CHANGES=false
if grep deplo $DELTA
then
    export ONLY_DEPLOY_CHANGES=true  
fi

echo Files Changed
cat $DELTA 
rm -rf $DELTA

echo "ONLY_DEPLOY_CHANGES=${ONLY_DEPLOY_CHANGES}" | tee -a $GITHUB_ENV  