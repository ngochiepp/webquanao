<?php

use App\Controllers\TestController;
// This route handling function will only be executed when visiting http(s)://www.example.org/about
$router->get('/about', TestController::class.'@index');


$router->get('/', function () {
    echo 'About Page Contents';
});
