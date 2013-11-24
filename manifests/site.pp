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

	package {
		[
			'curl',
			'libzmq-dev',
			'pkg-config',
			'php-pear',
			'php5-dev',
			'php5-cli',
		]:
			ensure => 'latest',
			require => Exec['apt_update'],
	} ->
	exec {
		'install zmq pecl extension':
			command => 'pecl install zmq-beta',
			unless => 'test -e /usr/lib/php5/20100525/zmq.so',
	} ->
	file {
		'/etc/php5/cli/conf.d/20-zmq.ini':
			content => 'extension=zmq.so',
	}
}