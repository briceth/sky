$(document).on 'turbolinks:load', (e) ->
  $("#new_message").on "keypress", (e) ->
    if e && e.keycode == 13
      e.preventDefault()
      $(this).submit()

  $("#new_message").on "submit", (e) ->
    e.preventDefault()
    console.log "Submitted form"

