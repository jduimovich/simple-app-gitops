
if [ -z $MY_QUAY_PW ]
then
echo  $0: No MY_QUAY_PW set, please set MY_QUAY_PW to your registry password.
exit
else 
gh secret set IMAGE_REGISTRY_PASSWORD -b $MY_QUAY_PW
fi