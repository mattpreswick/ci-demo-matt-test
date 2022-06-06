# Wiz SE Demo Repository - Github

### Description
This repository is dedicated to providing a starting point for SE demos using CI integration for WizCLI

## Requirements

* Github Account
* Wiz Service Account (`security_scan:create`)
* Ability to work with branches in Git

### OPTIONAL - Supporting requirements for dev machine

* Git installed
* VS Code
* Wiz-CLI
* AWSCLI installed and operational
* Azure CLI installed and operational
* Terraform >= 1.0 installed and operational
* Docker installed and running

## Basic Setup

1. Create a new repository from the template repository

![](images/create_from_template.png)

2. Set repository target and name (customize name to fit your needs)

NOTE: BE SURE TO SELECT YOUR PERSONAL REPO

![](images/create_repo.png)

3. Recreate repository secrets (obtained from Wiz service account `security_scan:create`)
  * WIZ_CLIENT_ID
  * WIZ_CLIENT_SECRET

![](images/create_secrets.png)

4. Get coffee

☕️ Template cleanup process takes a few minutes

5. Check for branches

![](images/check_branches.png)


## Basic Usage

This repo is configured to have the following additonal branches

* container-pass
* container-fail
* iac-pass
* iac-fail

**(main branch not shown here)**

1. Each branch has a text file in the root of the branch with the same name referred to here as `branch-file.txt`.

2. To make code PRs easier you can simply modify the text in the `branch-file.txt` to get a code change to submit.

![](images/branch-file.png)

3. Double click the file to access the editor.

![](images/edit_branch-file.png)

4. Add or change contents of the file and commit changes

![](images/commit-changes.png)

5. Navigate back to the repo root and you should see `compare & pull request`

![](images/compare-pull-request.png)

6. Simply use all of the defaults and select `create pull request`

![](images/create-pr.png)

7. Repeat for the other branches branches

The github actions located in `.github/workflows` will provide the required actions during PRs

8. Enable branch protection

![](images/branch-protection.png)

9. Configure branch protection for `main`

![](images/branch_policy.png)

**NOTE: BE SURE TO SELECT BOTH ACTIONS** `Wiz-cli Dockerfile and Container Scan` and `Wiz-cli IaC Scan`

10. Go back and view you PRs

![](images/prs_listed.png)

----------------------
</br>
</br>

## Miscellaneous

This repository is currently under development. If you see a problem please open an issue.

### Container Scanning Inventory

<b>Inventory</b></br>
| Folder | Item | Purpose|
--------|--------|------|
|`contianer-pass`|`Dockerfile`| Should be built in a way to pass all checks|
|`container-fail`|`Dockerfile`| Uses old version, copies in secrets, does not conform to standards|
|`container-fail`|`awssecret.txt`|Contains secret in text|
|`container-fail`|`secret.yaml`|Contains secret in text|

### IaC Scanning Inventory

<b>Inventory</b></br>
| Folder | Purpose|
--------|--------|
|`aws/terraforn-eks-pass`| Terraform instructions to build an EKS cluster |
|`aws/terraforn-eks-fail`| Terraform instructions to build an EKS cluster |
|`azure/terraform-aks-pass`| FUTURE USE |
|`azure/terraform-aks-fail`| FUTURE USE |

