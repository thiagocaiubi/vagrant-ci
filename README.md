# Vagrant-CI


## What?

Continuous Integration environment running on [Ubuntu](http://www.ubuntu.com/) Precise 64 bits provided by Vagrant.

## Requirements:
	
1. [Vagrant](http://vagrantup.com/)
2. [Puppet](http://puppetlabs.com/)

## How?

If you are not familiar to Vagrant and/or Puppet I really encourage you to check their docs.

If you just wanna code, let's do it

	vagrant box add precise64 http://files.vagrantup.com/precise64.box
	git clone git@github.com:thiagocaiubi/vagrant-ci.git
	cd vagrant-ci/
	vagrant up

Wait until vagrant setups the vm, and:
	
	vagrant ssh

Welcome to your new virtual machine

	vagrant@precise64:~$

## What is inside this box?

The following packages are available by Puppet:
	
1. [git](http://github.com/uggedal/puppet-module-git.git)
2. [java](http://github.com/puppetlabs/puppetlabs-java.git)
3. [wget](http://github.com/maestrodev/puppet-wget.git)
4. [maven](http://github.com/maestrodev/puppet-maven.git)

## Contribute:

Fork, hack and pull request!