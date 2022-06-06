####
####  DO NOT USE!!!
####

!#/bin/sh
git checkout main
git stash
git remote add template https://github.com/wiz-sec/wiz_se_demo_template.git
git fetch --all
git rebase template/main main
git rm .github/workflows/template-cleanup.yaml
git rebase --skip
git rebase origin container-pass
git rebase origin container-fail
git rebase origin iac-pass
git rebase origin iac-fail
git checkout container-pass  
git push --force
git checkout container-fail 
git push --force
git checkout iac-pass  
git push --force
git checkout iac-fail  
git push --force