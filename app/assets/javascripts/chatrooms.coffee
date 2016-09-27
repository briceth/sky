$(document).on 'turbolinks:load', (e) ->
  $("#new_message").on "keypress", (e) ->
    if e && e.keycode == 13
      e.preventDefault()
      $(this).submit()

  $("#new_message").on "submit", (e) ->
    e.preventDefault()

    chatroom_id = $("[data-behavior='messages']").data("chatroom-id")
    body        = $("#message_body")

    App.chatrooms.send_message(chatroom_id, body.val())

    body.val("")
