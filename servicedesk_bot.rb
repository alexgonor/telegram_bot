require 'telegram/bot'

token = '569477629:AAFBzThmvlkBX0vlZylPhcf1H5Mp8GJzlIQ'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "I am the ServiceDesk bot, My commands are /servicedesk /map /github /ticket")
    when '/servicedesk'
      bot.api.send_message(chat_id: message.chat.id, text: "Welcome to Service Desk")
    when '/map'
      bot.api.send_location(chat_id: message.chat.id, latitude: 49.432049, longitude: 32.083376)
    when '/github'
      bot.api.send_message(chat_id: message.chat.id, text: "https://github.com/alexgonor/ServiceDesk")
    when '/ticket'
      bot.api.send_message(chat_id: message.chat.id, text: "http://localhost:3000")
    end
  end
end
