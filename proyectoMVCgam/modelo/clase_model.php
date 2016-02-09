<?php

// Clase
class clase_model {

    // Atributos
    private $db;
    private $resultado;

    // Constructor
    public function construct() {
        // Asigna al atributo la ruta de la conexion a la base de datos
        $this->db = Conectar::conexion();
        // Asigna al atributo resultado un array vacio
        $this->resultado = array();
    }

    // Metodos
    public function get_alumnos() {
        // Creamos la sentencia
        $consulta = $this->db->query("SELECT * FROM Alumnos;");
        // Rellenamos el array
        while ($filas = $consulta->fetch_assoc()) {
            $this->resultado[] = $filas;
        }
        // Devuelve el array
        return $this->resultado;
    }

}

?>