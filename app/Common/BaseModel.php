<?php

namespace App\Common;
class BaseModel {
    protected $conn;

    public function __construct()
    {
        // mở kết nối db
    }

    
        public function __destruct()
    {
        // ngắt kết nối db
        $this->conn=null;
    }
}