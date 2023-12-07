<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="index4.php" method="post">
    <label>  name:</label> <input type="text" name="username"> <br>
    <label> Password:</label> <input type="password"  name="password"> <br>
    <input type="submit" value="log in">
    </form>

</body>
</html>



<?php

    //$_GET, $_POST = special variables that are used to collect data form
    // an html form. Data is sent to the file 
    //in the action attribute of <form>
    //form action = "someFile.php" method = "get"

    //$_GET good for search bar
    //echo $_GET ["username"] . "<br>" ;
    //echo $_GET ["password"] . "<br>";

    //$_POST good for submitting credentials
    echo $_POST ["username"] . "<br>" ;
    echo $_POST ["password"] . "<br>";


?>