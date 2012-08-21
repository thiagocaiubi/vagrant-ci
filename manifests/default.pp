exec { 'apt-get update':
	command => '/usr/bin/apt-get update'
}

class { 'git::client': }

class { 'unzip': } ->
class { 'java':
	distribution => 'jdk',
	version      => 'latest',
} ->
class { 'maven::maven' : 
	version => '3.0.4',
} ->
class { 'sonar' :
	version      => '3.2',
	arch         => 'linux-x86-64',
}