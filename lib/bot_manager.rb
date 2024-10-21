# lib/bot_manager.rb
require 'discordrb'
require_relative '../config/bot_config'
require_relative 'commands/embed_command'

class BotManager
  def initialize
    @bot = Discordrb::Commands::CommandBot.new(token: BotConfig::TOKEN, client_id: BotConfig::CLIENT_ID, prefix: '/')
    setup_commands
  end

  def setup_commands
    EmbedCommand.new(@bot)
  end

  def run
    @bot.run
  end
end
