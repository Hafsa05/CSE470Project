<?php

namespace PHPMailer\PHPMailer;
if (!class_exists('PHPMailer\PHPMailer\Exception')){

class Exception extends \Exception
{
    public function errorMessage()
    {
        return '<strong>' . htmlspecialchars($this->getMessage()) . "</strong><br />\n";
    }
}

}





