// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .



// TUTOTIALS

//SEARCH VOICE

    window.addEventListener('DOMContentLoaded', function() {
        var btn_gravacao = document.querySelector('search-tutorial__input');

        var transcricao_audio = '';
        var esta_gravando = false;

        if (window.SpeechRecognition || window.webkitSpeechRecognition) {

            var speech_api = window.SpeechRecognition || window.webkitSpeechRecognition;
            var receber_audio = new speech_api();

            receber_audio.continuous = true;
            receber_audio.interimResults = true;
            receber_audio.lang = "pt-BR";

            receber_audio.onstart = function() {
                esta_gravando = true;
                btn_gravacao.innerHTML = 'Gravando! Parar gravação';
            };

            receber_audio.onend = function() {
                esta_gravando = false;
                btn_gravacao.innerHTML = 'Iniciar Gravação';
            };
            receber_audio.onresult = function(event) {
                var interim_transcript = '';

                for (var i = event.resultIndex; i < event.results.length; i++) {
                    if (event.results[i].isFinal) {
                        transcricao_audio += event.results[i][0].transcript;
                    } else {
                        interim_transcript += event.results[i][0].transcript;
                    }

                    var resultado = transcricao_audio || interim_transcript;

                    console.log(resultado);
                }



                resultado.replace("arroba", "@");

                document.getElementById("search-tutorial__submit").innerHTML = resultado;



            };

            btn_gravacao.addEventListener('click', function(e) {
                if (esta_gravando) {
                    receber_audio.stop();
                    return;
                }
                receber_audio.start();
            }, false);

        } else {
            console.log("navegador não apresenta suporte a web speech api");
        }
    }, false);