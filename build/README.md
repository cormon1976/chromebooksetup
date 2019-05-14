### Repo to setup  a Chromebook for general development work.

#### Instructions

 - Step 1
   Clone this repo.
 - Step 2:
   Chmod and run the `ansible_install.sh` script which will install python3.7.2 and ansible.
 - Step 3:
   Run the ansible playbook via `python3.7 /usr/bin/ansible-playbook playbook.yml` to setup the following.

    - Base packages
    - Python Packages
    - Golang Binaries
    - Base dir setup.
    - oh-my-zsh
    - Vscode and needed plugins. 

#### Notes

  - Chromebook linux version is Debian.
  - Use at your own risk !!!  