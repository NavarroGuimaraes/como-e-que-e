window.addEventListener 'DOMContentLoaded', (->
  button_record = document.querySelector('#search-tutorial__voice')
  audio_transcription = ''
  is_recording = false
  if window.SpeechRecognition or window.webkitSpeechRecognition
    speech_api = window.SpeechRecognition or window.webkitSpeechRecognition
    recive_audio = new speech_api
    recive_audio.continuous = true
    recive_audio.interimResults = true
    recive_audio.lang = 'pt-BR'

    recive_audio.onstart = ->
      is_recording = true
      return

    recive_audio.onend = ->
      is_recording = false
      return

    recive_audio.onresult = (event) ->
      interim_transcript = ''
      i = event.resultIndex
      while i < event.results.length
        if event.results[i].isFinal
          audio_transcription += event.results[i][0].transcript
        else
          interim_transcript += event.results[i][0].transcript
        result = audio_transcription or interim_transcript
        console.log result
        i++
      document.getElementById('search-tutorial__input').innerHTML = result
      return

    button_record.addEventListener 'click', ((e) ->
      if is_recording
        recive_audio.stop()
        return
      recive_audio.start()
      return
    ), false
  else
    console.log 'navegador não apresenta suporte a web speech api'
  return
), false