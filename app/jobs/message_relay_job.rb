class MessageRelayJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "chatrooms:#{message.chatroom.id}", {
      message: MessagesController.render(message), #the partial message
      chatroom_id: message.chatroom.id #quels messages ont affiche
    }
  end
end
