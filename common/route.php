<?php

use Phroute\Phroute\RouteCollector;
use App\Controller\BaseController;
use App\Controller\TestController;


$url = !isset($_GET['url']) ? "/" : $_GET['url'];

$router = new RouteCollector();


$router->get('/', function () {
    return "trang chủ";
});
$router->get('edit', function () {
    return "edit";
});


$router->get('home', [TestController::class, 'home']);
# NB. You can cache the return value from $router->getData() so you don't have to create the routes each request - massive speed gains
$dispatcher = new Phroute\Phroute\Dispatcher($router->getData());

$response = $dispatcher->dispatch($_SERVER['REQUEST_METHOD'], $url);

// Print out the value returned from the dispatched function
echo $response;
