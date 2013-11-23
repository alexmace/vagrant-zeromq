WooWeb, November 2013
---
Vagrant box with ZeroMQ (messaging service) and PHP

* Install vagrant from vagrantup.com
* Pull in the submodule dependencies: `git submodule init; git submodule update`
* Run `vagrant up` from the top-level directory to run the VM
* Login to two separate instances of the VM using `vagrant ssh`
* In one shell: `php /vagrant/app/server.php`
* In the second shell: `php /vagrant/app/client.php`