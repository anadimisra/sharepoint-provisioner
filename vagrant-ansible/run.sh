export AWS_ACCESS_KEY=${VAGRANT_AWS_ACCESS_KEY}
export AWS_SECRET_KEY=${VAGRANT_AWS_SECRET_KEY}
export AWS_REGION=${VAGRANT_AWS_DEFAULT_REGION}
ansible-galaxy install -r requirements.yml
set -x
ansible-playbook --ask-vault-pass -i inventories/dev/ -vvv playbook.yml $@
set +x
