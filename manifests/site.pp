

node default {

	class { 'apt': }

	include php
	include php::apt

 	package {
		[ "php5-dev" ,"build-essential" , "libzmq1" ]:
		ensure => "latest",
 	}

	package { 'zmq-beta':
	    ensure   => installed,
	    provider => pecl;
	}

}
