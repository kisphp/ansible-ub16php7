# Ansible Environment Setup

# Requirements

- install vagrant
- install vagrant-vbguest plugin
- install VirtualBox 5.0+
- install ansible
- install NFS support

## Setup production server

```bash
ansible-playbook -i env/prod/main.ini setup_server.yml -u root --ask-pass
```

## Presetup

> Add this line in your `/etc/hosts` file:
> ```
> 10.10.5.60 dev.local
> ```
>
> And then it will be avaible in browser at: [http://dev.local](http://dev.local)

## Setup environment on Ubuntu 

### become root
```bash
sudo su
```

### install vim, git
```bash
sudo apt-get install vim git -y
```

### install ansible
```bash
sudo apt-get update
sudo apt-get install -y software-properties-common python-keyczar
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update
sudo apt-get install -y ansible
ansible --version
```

### download vagrant
```bash
wget https://releases.hashicorp.com/vagrant/1.8.6/vagrant_1.8.6_x86_64.deb
```

### install vagrant
```bash
sudo dpkg -i vagrant_1.8.6_x86_64.deb
```

### download virtualbox
```bash
wget http://download.virtualbox.org/virtualbox/5.0.26/virtualbox-5.0_5.0.26-108824~Ubuntu~trusty_amd64.deb
```

### install virtualbox
```bash
sudo dpkg -i virtualbox-5.0_5.0.26-108824~Ubuntu~trusty_amd64.deb
```

### install vagrant vbguest
```bash
vagrant plugin install vagrant-vbguest
```

### install NFS support
```bash
sudo apt install nfs-kernel-server
```

### glone git repository on desktop
```bash
git clone git@github.com:kisphp/ansible-php-5.6.git ~/Desktop/www
```

### go to project directory
```bash
cd ~/Desktop/www
```

### run vagrant up
```bash
vagrant up
```





## Setup local server from inside VM

```bash
cd ansible

# only for ubuntu/debian
./install-ansible.sh

ansible-playbook -i env/dev/main.ini setup_local.yml
```

## Install ansible inside VM

```bash
vagrant ssh

cd ansible

./install-ansible.sh
```
