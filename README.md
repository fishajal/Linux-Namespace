# Linux Namespace
This project is used to make two network namespace on linux os and connect them using virtual ethernet interface.
A network namespace is a powerful feature of Linux. In Linux, a network namespace is a way to create separate and isolated networks within a single computer. It’s like having multiple virtual networks on the same machine. It allows different processes or groups of processes to have their own independent network stacks, network interfaces, IP addresses, routing tables, and other network-related resources.
# Getting Started

# Prerequisites
1. Any virtualization software . Example : virtualbox
2. Vagrant for  building and managing virtual machine environments

# Installing

1. Install virtualbox
    1.1 Download virtual box from this link <a href="https://www.virtualbox.org/wiki/Downloads">Download Virtualbox</a>
    1.2 Install virtualbox
2. Install vagrant
    2.1 download vagrant from the this link <a href = "https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant">Download      Vagrant</a>
    2.2 Install vagrant
3. Setting up environment
    3.1 Run < vagrant init > for initializing of vagran in a dtrectory
    3.2 Choose a vagrant box from this link <a href="https://app.vagrantup.com/boxes/search">Vagrant boxes</a>
    3.3 vagran box is actually type of os and some configuration on top of it. in this case i choose "Centos 7"
    3.4 now run < vagrant box add centos/7 > here " centos/7" is vagrant box name that you will find from the documentation of public vagrant boxes
    3.5 The previous command will download and create a virtual environment
    3.6 run < vagrant up > for initializing and booting virtual environment
    3.7 run < vagrant ssh > to login to host maching to virtual machine

    




