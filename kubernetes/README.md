# Guide

## logic how the cluster is created

``` text
* manually create ssh key pairs and authorized_key, which will be used in sealos to join nodes.
* vagrant boot up
* install sealos
* run sealos to boot up cluster
```

## download centos box and add it

it's too slow to download centos box with vagrant. So I prefer pre-download it.
[centos/7](https://vagrantcloud.com/centos/boxes/7/versions/2004.01/providers/virtualbox.box)

```bash
vagrant box add .\CentOS-7-x86_64-Vagrant-2004_01.VirtualBox.box --name centos/7
```

### generate ssh key for use

```bash
KEY_PATH="./keys"
ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -f $KEY_PATH/id_rsa
cat $KEY_PATH/id_rsa.pub >> $KEY_PATH/authorized_keys
```

### vagrant ssh master and download and install sealos

install [sealos](https://docs.sealos.io/docs/getting-started/installation)

```bash
su root  # default password vagrant
cd ~
cp /vagrant/sealos_4.1.3_linux_amd64.tar.gz /root/sealos_4.1.3_linux_amd64.tar.gz && \
   tar zxvf sealos_4.1.3_linux_amd64.tar.gz sealos && chmod +x sealos && mv sealos /usr/bin
sealos pull labring/kubernetes:v1.22
sealos pull labring/kubernetes:v1.23
sealos pull labring/kubernetes:v1.24
sealos pull labring/kubernetes:v1.25
```

## sealos to boot up cluster

```bash
<!-- sealos run labring/kubernetes:v1.25.0 labring/helm:v3.8.2 labring/calico:v3.24.1 \ -->
sealos run labring/kubernetes:v1.25.0 labring/helm:v3.8.2 \
     --masters 192.168.56.101 \
     --nodes 192.168.56.102
```

## delete cluster

```bash

sealos reset --masters 192.168.56.101 \
     --nodes 192.168.56.102
```
