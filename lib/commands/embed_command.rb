# lib/commands/embed_command.rb
class EmbedCommand
  def initialize(bot)
    bot.command(:embed) do |event, title = nil, description = nil, color = '0xFFFFFF'|
      puts "Title: #{title.inspect}, Description: #{description.inspect}, Color: #{color.inspect}"

      if title.nil? || title.empty?
        event.respond "Bitte gib einen Titel für das Embed an."
        next
      end

      if description.nil? || description.empty?
        event.respond "Bitte gib eine Beschreibung für das Embed an."
        next
      end

      embed = Discordrb::Webhooks::Embed.new do |e|
        e.title = title
        e.description = description
        e.color = color.to_i(16)
      end

      event.channel.send_embed('', embed)
      event.respond "Embed wurde gesendet!"
    end
  end
end
