<?php

namespace App\Controller;

use App\Controller\BaseController;

class TestController extends BaseController
{
    public function home()
    {
        return $this->render('list');
    }
}
