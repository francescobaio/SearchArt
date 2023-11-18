$(document).ready(function () {
    $(".toggle-mnu").on("click", function () {
        $(".toggle-mnu").toggleClass("on");
        $(".container-menu-hidden").toggleClass("container-menu");
        $(".container-menu-list").toggle();
        $("body").toggleClass("disable-scroll");
    });
});
