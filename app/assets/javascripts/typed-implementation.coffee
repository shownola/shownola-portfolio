ready = ->
  Typed.new '.element',
    strings: [
      'Design is not just what it looks like and feels like. Design is how it works.'
        '-Steve Jobs'
      'I look forward to helping you with your projects'
    ]
    typeSpeed: 0
  return 


$(document).ready ready
$(document).on 'turbolinks:load', ready
