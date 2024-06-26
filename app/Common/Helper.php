<?php
namespace  app\Common;
//Chứa các hàm hỗ trợ -> không khởi tạo đối tượng  
// dùng để gọi trực tiêp nên sử dụng static

class Helper {
    public static function debug($data){
        echo '<pre>';
        print_r($data);
        
        die;
    }
}