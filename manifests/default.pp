import 'git'
import 'maven'

exec { 'apt-get update':
	command => '/usr/bin/apt-get update'
}

class { 'git::client': }

class { 'java':
	distribution => 'jdk',
	version      => 'latest',
} ->
class { 'maven::maven' :
	version => '3.0.4',
}