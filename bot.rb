require './lib/discord/client'
require './lib/service'

bot = Discord::Client.new.bot
service = Service.new(bot)
service.omikuji
service.enjo
bot.run
