<?php
    header('Access-Control-Allow-Origin: *');
    include "config.php";

   $countfiles = count($_FILES['images']['name']);
    for($index = 0;$index < $countfiles ; $index++) {
        $filename = $_FILES['images']['name'][$index];
        $location = "../upload/" . $filename;
        move_uploaded_file($_FILES['images']['tmp_name'][$index], $location);
    }

    $query_1 = 'TRUNCATE TABLE ArtWorks_labeling';

    $mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE, 8889);
    $mysqli->query($query_1);

    $command = escapeshellcmd('/Applications/MAMP/htdocs/SearchArt/pythonProject/main.py');
    $output = shell_exec($command);
    $output = json_decode($output,true);
    $labels = array();
    for($i = 0; $i< sizeof($output);$i++){
        for($x = 0; $x<sizeof($output[$_FILES['images']['name'][$i]]);$x++){
            $query_populate = 'insert into ArtWorks_labeling values(LOAD_FILE("/Applications/MAMP/htdocs/SearchArt/upload/'.$_FILES["images"]["name"][$i].'"),"'.$output[$_FILES["images"]["name"][$i]][$x].'",'.$i.')';
            $mysqli->query($query_populate);
            if(isset($labels[$output[$_FILES["images"]["name"][$i]][$x]]))
                $labels[$output[$_FILES["images"]["name"][$i]][$x]]++;
            else
                $labels[$output[$_FILES["images"]["name"][$i]][$x]] = 1;
        }
        unlink("../upload/".$_FILES['images']['name'][$i]);
    }
    echo json_encode($labels);
?>
