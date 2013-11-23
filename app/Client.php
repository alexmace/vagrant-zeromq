<?php
// allocate a new context
$context = new ZMQContext();

// create a new socket
$socket = $context->getSocket(ZMQ::SOCKET_REP, 'server', function (ZMQSocket $socket, $persistentId = null)
	{
		// the socket is persistent so this function is called only on the
  		// first request to the script.
		if ($persistentId === 'server') {
	        $socket->bind("tcp://localhost:1337");
	    } else {
	        $socket->connect("tcp://localhost:1337");
	    }
	});

$message = $socket->recv();
echo "Received message: {$message}\n";