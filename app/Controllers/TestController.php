<?php

namespace App\Controllers;

use App\Common\BaseController;

class TestController extends BaseController
{
    public function home()
    {
        return $this->render('list');
    }
}
