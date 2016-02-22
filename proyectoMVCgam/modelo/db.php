<?php

class Conectar {

    public static function conexion() {
        $conexion = new mysqli("mysql.hostinger.es", "u312987947_usuar", "usuario ", "u312987947_clase");
        return $conexion;
    }

}

?>
