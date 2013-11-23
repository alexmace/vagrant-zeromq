<?php
$server = new ZMQSocket(new ZMQContext(), ZMQ::SOCKET_REP);
$server->bind('tcp://127.0.0.1:1337');

// echo the incoming message and send back
while ($message = $server->recv()) {
	echo $message . PHP_EOL;
	$server->send('bar');
}