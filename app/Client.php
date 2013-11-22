<?php
/*
  The socket is persistent so this function is called only on the 
  first request to the script.
*/
// function on_new_socket_cb(ZMQSocket $socket, $persistent_id = null)
// {
// 	echo "CALLBACK WOO";
//     if ($persistent_id === 'server') {
//         $socket->bind("tcp://localhost:1337");
//     } else {
//         $socket->connect("tcp://localhost:1337");
//     }
// }

// /* Allocate a new context */
// $context = new ZMQContext();

// /* Create a new socket */
// $socket = $context->getSocket(ZMQ::SOCKET_REP, 'server', 'on_new_socket_cb');

// $message = $socket->recv();
// echo "Received message: {$message}\n";

 echo "WOO PHP";