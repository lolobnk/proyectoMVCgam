<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Alumnos</title>
    </head>
    <body>
        <h1>Soy la vista</h1>
        
        <?php
        
            
            foreach ($datos as $dato) {
                echo $dato["nombre"] . "<br/>";
            }
        ?>
    </body>
</html>
