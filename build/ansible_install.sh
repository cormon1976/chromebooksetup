
#!/bin/bash

###################
# Install ansible #
if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo "Adding Ansible PPA"
    sudo apt-add-repository ppa:ansible/ansible -y
fi

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get update
    sudo apt-get install software-properties-common ansible git python-apt -y
else
    echo "Ansible already installed"
fi

###################
# Install/Build python3.7 #

wget https://www.python.org/ftp/python/3.7.2/Python-3.7.2.tgz

tar xzf Python-3.7.2.tgz
cd Python-3.7.2
sudo ./configure --enable-optimizations
sudo make altinstall


#####################################
# Display real installation process #
echo ""
echo "clone git@github.com:cormon1976/chromebooksetup.git "
echo "Customize the playbook palybook.yml to suit your needs, then run ansible with :"
echo "ansible-playbook playbook.yml"
echo ""
