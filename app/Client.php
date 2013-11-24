<?php
$queue = new ZMQSocket(new ZMQContext(), ZMQ::SOCKET_REQ);
$queue
	->connect('tcp://127.0.0.1:1337')
	->send('foo');

echo $queue->recv() . PHP_EOL;