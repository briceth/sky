$(document).on('turbolinks:load', function() {
  $(#new_message).on "keypress", (e) ->
    if e && e.keycode == 13
      e.preventDefault()
        $(this).submit()
});
