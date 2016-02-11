<?php

//Llamada al modelo
require("../modelo/clase_model.php");

// Creamos un objeto clase_model
$per = new clase_model();
// Rellenamos la variable mediante un metodo de la clase_model
$datos = $per->get_alumnos();

//Llamamos a la vista
require("../vista/clase_view.php");
?>