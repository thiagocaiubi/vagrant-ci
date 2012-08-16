# Vagrant-CI


## What?

A virtual machine running an [Ubuntu](http://www.ubuntu.com/) Precise 64 bits provided by Vagrant.

## Requirements:
	
1. [Vagrant](http://vagrantup.com/)
2. [Puppet](http://puppetlabs.com/)

## How?

If you are not familiar to Vagrant and/or Puppet I really encourage you to check their docs.

	vagrant box add precise64 http://files.vagrantup.com/precise64.box
	git clone git@github.com:thiagocaiubi/vagrant-ci.git
	cd vagrant-ci/
	vagrant up

Wait until vagrant setups the vm and:
	
	vagrant ssh

Welcome to your new virtual machine

## What is int it?

The following packages are available by provisioner Puppet:
	
1. [git](github.com/uggedal/puppet-module-git.git)
2. [java](github.com/puppetlabs/puppetlabs-java.git)
3. [wget](github.com/maestrodev/puppet-wget.git)
4. [maven](github.com/maestrodev/puppet-maven.git)

## Contribute:

Fork, hack and pull request!