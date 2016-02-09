<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Alumnos</title>
    </head>
    <body>
        <?php
            foreach ($datos as $dato) {
                echo $dato["nombre"] . "<br/>";
            }
        ?>
    </body>
</html>
