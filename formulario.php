<!--@author Alessandra-Marie Bayot Diana 
IDE: Visual Studio Code 1.79.0 -->
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title> Formulario de Registro SCIII</title>
    <link href="estilos.css" rel ="stylesheet" type="text/css">
</head>
<body>
    <div class="group">
        <form method="POST" action=" ">
        <fieldset>
        <h2><em> Formulario de Registro </em></h2>
        <!--Nombre -->
        <div>
            <label for="nombre" >Nombre <span><em>(requerido)</em></span><br></label>
            <input type="text" name="nombre" class="form-input" pattern="[A-Za-z]{1,20}" required/>
            <div class="formulario_input_error"></div><br>
        </div>

        <!--Apellido-->
        <div>
            <label for="apellido" >Apellido<span><em>(requerido)</em></span><br></label>
            <input type="text" name="apellido" class="form-input" pattern="[A-Za-z]{1,20}" required/>
            <div class="formulario_input_error"></div><br>
        </div>

        <!--Email -->
        <div>
            <label for="email" required >Email<span><em>(requerido)</em></span><br></label>
            <input type="email" name="email" class="form-input" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,4}$" required/>
            <div class="formulario_input_error"></div><br>
        </div>

        <!--Botón Submit-->
        <input class="form-btn" name="submit" type="submit" value="Suscribirse"/>
        </fieldset>

        <!--código PHP-->
        <?php
        /**
         * Si el usuario ha introducido datos se produce las acciones dentro del if
         * En nuestro caso hemos indicado de igual manera que se deben rellenar las casillas
         */
        if($_POST){
            //Instanciamos las variables con los datos introducidos por el usuario
            $nombre = $_POST['nombre'];
            $apellido = $_POST['apellido'];
            $email = $_POST['email'];

            /**
             * Conexión con PDO
             * Guardamos los parámetros de la conexión en variables
             */

            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "cursosql";

            //Create connection
            $conn = new mysqli($servername,$username,$password,$dbname);
            //Check connection
            if($conn->connect_error){
                die("Connection failed: ". $conn->connect_error);
            }

            /**
             * Guardamos en una variable la consulta sql para introducir los datos en la BBDD
             * En mi caso la tabla a la que se van a insertar los datos se llama usuario en la base de datos llamada cursossql
             */
            $sql = "INSERT INTO usuario (nombre,apellido,email) VALUES ('$nombre','$apellido','$email')";

            //Dentro de un if-else ejecutamos la consulta guardada en la variable anterior.
            if($conn->query($sql) === TRUE){
                echo "<h3> New record created succesfully </h2>";
            }else{
                echo "Error: ". $sql . "<br>" .$conn->error;
            }

            //Cerramos la conexión
            $conn->close();
        }
        ?>
        </form>
    </div>
</body>
</html>