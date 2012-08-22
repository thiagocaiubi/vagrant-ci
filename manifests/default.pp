exec { 'apt_update':
	command     => "/usr/bin/apt-get update --fix-missing",
	logoutput   => 'on_failure',
}

class { 'git::client': }

class { 'unzip': } 

class { 'java':
	distribution => 'jdk',
	version      => 'latest',
	require => Exec['apt_update'],
} ->
class { 'maven::maven' : 
	version => '3.0.4',
} ->
class { 'jenkins::package': } ->
class { 'sonar' :
	version      => '3.2',
	arch         => 'linux-x86-64',
}