const file = document.querySelector('#upload-button');
const list =  ['person', 'bowl', 'potted plant', 'bottle', 'vase', 'chair', 'dog', 'bird', 'cup', 'horse', 'umbrella',
    'cat', 'orange', 'scissors', 'dining table', 'sheep', 'spoon', 'book', 'cow', 'wine glass', 'knife', 'bicycle', 'suitcase', 'apple',
    'train', 'boat', 'bear', 'tie', 'banana', 'giraffe', 'sink', 'carrot', 'bench', 'cake', 'broccoli', 'bed', 'tennis racket',
    'elephant', 'toilet', 'sandwich','car','motorbike','aeroplane','bus','truck','traffic light','fire hydrant','stop sign','parking meter','zebra','backpack',
    'handbag','frisbee','skis','snowboard','sports ball','kite','baseball bat','baseball glove','skateboard','surfboard','fork','hot dog','pizza','donut','sofa','tv monitor',
    'laptop','mouse','remote','keyboard','cell phone','microwave','oven','toaster','refrigerator','clock','teddy bear','hair drier','toothbrush'];


var removedElements = [];


function upload(event) {

    document.querySelector('.other-file-name').innerHTML = ""
    $("#file-visible-icon").show();
    $("#file-hidden-icon").hide();
    $('.other-file-name').hide();

    // Get the selected file
    const files = event.target.files;
    // Get the file name and size
    const fileNames = [];
    const sizes = [];
    const fileNamesAndSizes = [];
    fileNames.push(files[0].name);
    sizes.push((files[0].size/100).toFixed(2));
    fileNamesAndSizes.push(fileNames[0]+" - "+sizes[0]+"KB");
    document.querySelector('.first-file-name').innerHTML = fileNamesAndSizes[0] + "<br>";

    for(let i = 1;i<files.length;i++) {
        fileNames.push(files[i].name);
        sizes.push((files[i].size/100).toFixed(2));
        fileNamesAndSizes.push(fileNames[i]+" - "+sizes[i]+"KB");
        document.querySelector('.other-file-name').innerHTML += fileNamesAndSizes[i] + "<br>";
    }

    $(".list-information").hide();

}

function display() {

    $('.more-info').toggle();
    $('.information-visible-icon').toggle();
    $('.information-hidden-icon').toggle();
}


function showFileName(){
    $('.other-file-name').toggle();
    $("#file-visible-icon").toggle();
    $("#file-hidden-icon").toggle();
}


$(document).ready(function () {

    if(sessionStorage.getItem("result") != null){
        for(let i in list){
            if(!(Object.keys(JSON.parse(sessionStorage.getItem("result"))).includes(list[i]))){
                $("#" + list[i].replace(" ","-")).closest("li").remove();
            }
        }
        for(const[key,value] of Object.entries(JSON.parse(sessionStorage.getItem("result")))){
            $("#" + key.replace(" ","-")).attr("data-weight", (Math.round((value / (JSON.parse(sessionStorage.getItem("numOfFiles")))) * 8).toString()));
            document.getElementsByClassName(key.replace(" ","-"))[0].textContent = "(" + value.toString() + ")";
        }
        $(".tagcloud-form").toggle();
        $(".list-information").show();
    }
});


function formUpload(event) {

    if(document.getElementById('upload-button').files.length > 0) {

        event.preventDefault();

        for(let i=0;i<document.querySelectorAll(".cloud span").length;i++) {
            document.querySelectorAll(".cloud span")[i].textContent = "";
        }
        if(sessionStorage.getItem("removedElements") != null) {
            for (let i = 0; i < JSON.parse(sessionStorage.getItem("removedElements")).length; i++) {
                document.getElementsByClassName("cloud")[0].innerHTML += JSON.parse(sessionStorage.getItem("removedElements"))[i];
            }
            $(".tagcloud-form").toggle();
        }

        $("a").attr("data-weight", "1");
        removedElements = [];

        document.getElementById("progress-bar-information").innerHTML = "Wait! The neural network is processing..."
        $(".list-information").hide();
        $(".progress-bar").css("animation-duration", (30 * document.getElementById('upload-button').files.length) + "s").toString();
        $(".progress-bar-border").css("background-color","transparent");
        $(".progress-bar-border").show();
        $(".progress-bar").show();
        $("#bar").removeClass('progress-bar');
        setTimeout(function(){
            $("#bar").addClass('progress-bar');
        },100);

        var fd = new FormData();
        for (var i = 0; i < document.getElementById('upload-button').files.length; i++) {
            fd.append('images[]', document.getElementById('upload-button').files[i]);
        }

        $.ajax({
            url: "http://localhost:8888/SearchArt/server/upload.php",
            type: "POST",
            contentType: false,
            processData: false,
            cache: false,
            data: fd,
            crossDomain: true,
            success: function (result) {
                $(".progress-bar-border").css("background-color", "#7ca6d8");
                sessionStorage.setItem("result", result);
                sessionStorage.setItem("numOfFiles",document.getElementById('upload-button').files.length);
                result = JSON.parse(result);
                for(const[key,value] of Object.entries(result)){
                    $("#" + key.replace(" ","-")).attr("data-weight", (Math.round((value / (document.getElementById('upload-button').files.length)) * 8).toString()));
                    document.getElementsByClassName(key.replace(" ","-"))[0].textContent = "(" + value.toString() + ")";
                }
                for(let i in list){
                    if(!(Object.keys(result).includes(list[i]))){
                        removedElements.push(document.getElementById(list[i].replace(" ","-")).closest("li").outerHTML);
                        $("#" + list[i].replace(" ","-")).closest("li").remove();
                    }
                }
                sessionStorage.setItem("removedElements",JSON.stringify(removedElements));
                $(".tagcloud-form").toggle();

                $(".list-information").toggle();
                document.getElementById("progress-bar-information").innerHTML = "Done!";
            }
        });

    }

}

