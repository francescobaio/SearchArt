<style>
    <?php include "../css/style.css";?>
</style>
<style>
    <?php include "../css/description.css";?>
</style>
<script>
    <?php include "../js/jquery-3.3.1.min.js";?>
</script>
<script>
    <?php include "../js/toggle-menu.js";?>
</script>
<script>
    <?php include "../js/Speech-Recognition.js";?>
</script>



<?php

$picture = $_POST['Picture'];
$description = $_POST['Description'];
$title = $_POST['Title'];
$author = $_POST['Author'];

$input = $_GET['keyword'];
$page = $_GET['page'];

?>


    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Search Art</title>
        <meta name="viewport" content="width=device-width,initial-scale=1.0, maximum-scale=1.0">
        <meta name="keywords" content="picture,art,keywords,search">
        <meta name="description"
              content=" A WebApp that ,given a keyword, searches for images related to it using a neural network.">
        <meta name="google" content="no-translate">


        <link rel="apple-touch-icon" sizes="126x126" href="../logo/126X126.png">
        <link rel="shortcut icon" href="../logo/16X16.png">
        <link rel="icon" type="image/png" sizes="32x32" href="../logo/32X32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="../logo/16X16.png">


    </head>


    <body>

    <div class="container-menu-hidden">
        <div class="container-menu-list">
            <ul id="header-menu">
                <li><a href="../index.html" title="Home Page"><span>HOME</span></a></li>
                <li><a href="../html/about.html" title="Contact Page"><span>ABOUT US</span></a></li>
            </ul>
        </div>
    </div>
    <div class="content-wrapper">
        <header class="header">
            <div class="header-sx">
                <a href="../index.html" title="Link Home">
                    <img id="img-logo" src="../logo/Search%20Art%20Logo.png" alt="Company Logo">
                </a>
            </div>
            <div class="header-right">
                <a href="#"  class="toggle-mnu">
                    <span class="toggle-menu-hamburgher"></span>
                    <span class="toggle-menu-text">MENU</span>
                </a>
            </div>
        </header>

        <div class="row-title">
            <?php
                echo '<a title="Back Button" href="actions.php?page=' . $page . '&keyword=' . $input . '"><img src="../images/arrow-left-circle.svg" alt="Back Button"></a>'
            ?>
        </div>


        <div class="images">

        <div class="main-content-description">
            <div class="wrapper-main-content">
            <?php echo '<img src="data:image/png;base64,' . $picture.'">';?>



        </div>
            <div class="wrapper-description">

                <?php echo '<h2>Title: </h2><p>'.$title.'</p>';?>
                <?php echo '<h2>Author: </h2><p>'.$author.'</p>';?>
                <?php echo '<h2>Description: </h2><p>'.$description.'</p>';?>

            </div>
            <div class="wrapper-buttons-speech">
                <img id="play-image" src="../images/play-circle.svg" alt="Speech Recognition Icon Play" onclick="play('<?php echo 'The title of the painting is : ' .$title. '. The author is: '.$author.'. Description: '.$description?>')">
                <img src="../images/stop-circle.svg" alt="Speech Recognition Icon Stop" onclick="stop()">
                <img src="../images/pause-circle.svg" alt="Speech Recognition Icon Pause" onclick="onClickPause()">
            </div>

        </div>




        <footer class="footer">
            <div class="footer-row">
                <div class="footer-row-1">
                    <h3>Contacts:</h3>
                    <ul>
                        <li>Rieti,RI,Italy</li>
                        <li>
                            <a href= "mailto:francesco.baiocchi@stud.unifi.it">
                                francesco.baiocchi@stud.unifi.it
                            </a>
                        <li>
                            <a href= "mailto:leonardo.petrilli@stud.unifi.it">
                                leonardo.petrilli@stud.unifi.it
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="footer-row-2">
                    <h3>Social:</h3>
                    <p>For more info or specific questions:</p>
                    <div class="social-buttons">
                        <a href="" title="Facebook icon">
                            <img src="../images/facebook.svg" alt="Facebook icon">
                        </a>
                        <a href="" title="Facebook icon">
                            <img src="../images/instagram.svg" alt="Instagram icon">
                        </a>
                    </div>
                </div>
            </div>
        </footer>
</div>

</body>
</html>