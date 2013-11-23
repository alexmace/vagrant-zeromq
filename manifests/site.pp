node default {
	Exec {
		path => [
			'/usr/bin/',
			'/usr/sbin/',
			'/bin/',
			'/sbin/',
		]
	}

	exec {
		'setup OS locale':
			command => 'locale-gen en_GB.UTF-8',
	}

	class {
		'apt':
			always_apt_update => true,
			disable_keys => true,
	}

	#apt::ppa {
	#	'ppa:ondrej/php5':
	#}

	package {
		[
			'curl',
			'php5-cli',
			'php5-common',
			'php5-dev',
		]:
			ensure => 'latest',
			require => Exec['apt_update'],
	}

	chris::lea::repo {
		'libpgm':
	}
	chris::lea::repo {
		'zeromq':
	}

	package {
		'libzmq-dev':
			ensure  => installed,
			require => [
				Chris::Lea::Repo['libpgm'],
				Chris::Lea::Repo['zeromq'],
			],
	}
}