require './lib/discord/client'
require './lib/omikuji'

bot = Discord::Client.new
bot.response('おみくじ', Omikuji.random_select)
bot.run
