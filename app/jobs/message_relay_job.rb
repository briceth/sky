class MessageRelayJob < ApplicationJob
  queue_as :default

  def perform(message)
    ActionCable.server.broadcast "chatrooms:#{message.chatroom.id}", {
      first_name: message.user.first_name,
      body: message.body,
      chatroom_id: message.chatroom.id #quels messages ont affiche
    }
  end
end
