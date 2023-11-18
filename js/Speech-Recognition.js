
if("speechSynthesis" in window){
    var synth = speechSynthesis;
    var  flag = false;
}

function play(text){
    if(!flag){
        flag = true;
        var utterance = new SpeechSynthesisUtterance(text);
        utterance.lang = 'en';
        utterance.rate = 0.75;
        utterance.onend = function (){
            flag = false;
        };

        synth.speak(utterance);
    }
    if(synth.paused){
        synth.resume();
    }

}


function onClickPause(){
    if(synth.speaking && !synth.paused){
        synth.pause();
    }
}


function stop(){
    if(synth.speaking){
        flag = false;
        synth.cancel();
    }
}

