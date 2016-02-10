<?php

//Llamada al modelo
require_once("../modelo/clase_model.php");

// Creamos un objeto clase_model
$per = new clase_model();
// Rellenamos la variable mediante un metodo de la clase_model
$datos = $per->get_alumnos();

//Llamamos a la vista
require_once("../vista/clase_view.php");
?>