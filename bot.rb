# bot.rb
require 'discordrb'
require_relative 'config/bot_config'
require_relative 'lib/bot_manager'

bot_manager = BotManager.new
bot_manager.run
