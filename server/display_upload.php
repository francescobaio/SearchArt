<style>
    <?php include "../css/style.css";?>
</style>
<style>
    <?php include "../css/display_upload.css";?>
</style>
<script>
    <?php include "../js/jquery-3.3.1.min.js";?>
</script>
<script>
    <?php include "../js/toggle-menu.js";?>
</script>
<?php
    include "config.php";
    if (!isset($_GET['page'])) {
        $page = 1;
    } else {
        $page = $_GET['page'];
    }
    $page_first_result = ($page - 1) * 6;
    $label = $_GET['keyword'];
    $query = 'SELECT Picture FROM ArtWorks_labeling WHERE Labels = "'.$label.'"';
    $mysqli = new mysqli(DB_HOST, DB_USER, DB_PASSWORD, DB_DATABASE, 8889);
    $result = $mysqli->query($query);
    $number_of_result = mysqli_num_rows($result);
    $number_of_page = ceil($number_of_result / 6);
    $operas = array();
    while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
        $picture = $row['Picture'];
        array_push($operas,base64_encode($picture));
    }

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
    <meta name="google" content="notranslate">



    <link rel="apple-touch-icon" sizes="126x126" href="../logo/126X126.png">
    <link rel="shortcut icon" href="../logo/64X64.png">
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


    <div class="wrapper-images">
        <div class="row-title">
            <a href="../html/labeling.html" title="Back Button"><img src="../images/forward-fill.svg" alt="Back Button"></a>
            <?php echo '<h2 class="upload-title">Label: '.$label.'</h2>';?>
        </div>
        <div class="images">
            <?php
            for ($i = $page_first_result; $i < $page_first_result + 6 - (6 - ($number_of_result % 6)) * floor($page / $number_of_page); $i++) {

                echo '<div class="content-opera">
                    <img id="upload-image"  src="data:image/png;base64,' . $operas[$i]. '">
                </div>';
            }
            ?>

        </div>
        <div class="navbar-pages">
            <ul class="list-pages">
                <?php
                if ($page - 1 != 0)
                    echo '<li id="arrow-left"><a href="display_upload.php?page=' . ($page - 1) . '&keyword=' . $label . '"> <img src="../images/caret-left-fill.svg" alt="Page Back"> </a></li>';
                else
                    echo '<li id="arrow-left"><a href="display_upload.php?page=' . ($page) . '&keyword=' . $label . '"> <img src="../images/caret-left-fill.svg" alt="Page Back"> </a></li>';

                for ($i = 1; $i <= $number_of_page; $i++) {
                    echo '<li><a href="display_upload.php?page=' . $i . '&keyword=' . $label . '">' . $i . '</a></li>';
                }

                if ($page + 1 <= $number_of_page)
                    echo '<li id="arrow-right"><a href="display_upload.php?page=' . ($page + 1) . '&keyword=' . $label . '"> <img src="../images/caret-right-fill.svg" alt="Page Back"> </a></li>';
                else
                    echo '<li id="arrow-right"><a href="display_upload.php?page=' . ($page) . '&keyword=' . $label . '"> <img src="../images/caret-right-fill.svg" alt="Page Back"> </a></li>';
                ?>
            </ul>
        </div>
    </div>

    <footer class="footer">
        <div class="footer-row">
            <div class="footer-row-1">
                <h3>Contacts:</h3>
                <ul>
                    <li>Rieti,RI,Italy</li>
                    <li>
                        <a href="mailto:francesco.baiocchi@stud.unifi.it">
                            francesco.baiocchi@stud.unifi.it
                        </a>
                    <li>
                        <a href="mailto:leonardo.petrilli@stud.unifi.it">
                            leonardo.petrilli@stud.unifi.it
                        </a>
                    </li>
                </ul>
            </div>
            <div class="footer-row-2">
                <h3>Social:</h3>
                <p>For more info or specific questions:</p>
                <div class="social-buttons">
                    <a href="#" title="Facebook icon">
                        <img src="../images/facebook.svg" alt="Facebook icon">
                    </a>
                    <a href="#" title="Facebook icon">
                        <img src="../images/instagram.svg" alt="Instagram icon">
                    </a>
                </div>
            </div>
        </div>
    </footer>


</body>
</html>
