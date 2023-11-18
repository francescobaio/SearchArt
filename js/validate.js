const labels = ['Person', 'Bowl', 'Potted plant', 'Bottle', 'Vase', 'Chair', 'Dog', 'Bird', 'Cup', 'Horse', 'Umbrella',
    'Cat', 'Orange', 'Scissors', 'Dining table', 'Sheep', 'Spoon', 'Book', 'Cow', 'Wine glass', 'Knife', 'Bicycle', 'Suitcase', 'Apple',
    'Train', 'Boat', 'Bear', 'Tie', 'Banana', 'Giraffe', 'Sink', 'Carrot', 'Bench', 'Cake', 'Broccoli', 'Bed', 'Tennis racket',
    'Elephant', 'Toilet', 'Sandwich','person', 'bowl', 'potted plant', 'bottle', 'vase', 'chair', 'dog', 'bird', 'cup', 'horse', 'umbrella',
    'cat', 'orange', 'scissors', 'dining table', 'sheep', 'spoon', 'book', 'cow', 'wine glass', 'knife', 'bicycle', 'suitcase', 'apple',
    'train', 'boat', 'bear', 'tie', 'banana', 'giraffe', 'sink', 'carrot', 'bench', 'cake', 'broccoli', 'bed', 'tennis racket',
    'elephant', 'toilet', 'sandwich','Dining Table','Potted Plant','Tennis Racket','Wine Glass'];


function spokenValidate(event) {
    if(!labels.includes($("#input-speech").val()) || $("#input-speech").val() == ""){
        event.preventDefault();
        $('#input-speech').val("");
    }
}

function startDictation() {

    if (window.hasOwnProperty('webkitSpeechRecognition')) {
        var recognition = new webkitSpeechRecognition();
        recognition.continuous = false;
        recognition.lang = 'en';
        recognition.start();

        recognition.onstart = function(e) {
            $(".mic").attr("src","../images/mic-red.svg");
        }

        recognition.onresult = function (e) {
            $('#input-speech').val(e.results[0][0].transcript);
        };
        recognition.onerror = function (e) {
            recognition.stop();
            $(".mic").attr("src","../images/mic-fill.svg");
        };
        recognition.onspeechend = function(e){
            recognition.stop();
            $(".mic").attr("src","../images/mic-fill.svg");
        }

    }
}


