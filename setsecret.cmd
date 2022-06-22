
@echo off  
  
IF "%MY_QUAY_PW%"=="" (GOTO :missing_reg_token) 
gh secret set IMAGE_REGISTRY_PASSWORD -b %MY_QUAY_PW%
goto :end

:missing_reg_token
echo missing registry token in MY_QUAY_PW

:end