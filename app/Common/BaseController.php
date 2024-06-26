<?php
namespace App\Common;//common để chứa những file class cha  dùng chung
use eftec\bladeone\BladeOne;

class BaseController{

    protected function render($viewFile, $data = []){
        $viewDir = "./app/Views/admin";
        $storageDir = "./storage";
        $blade = new BladeOne($viewDir,$storageDir, BladeOne::MODE_DEBUG);
        echo $blade->run($viewFile, $data);
    }
}
