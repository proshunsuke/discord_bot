# coding: utf-8
require 'discordrb'
require 'yaml'
require './lib/omikuji'

secrets = YAML.load_file('./config/secrets.yml')
bot = Discordrb::Bot.new secrets["mail"], secrets["password"]

bot.message(with_text: "おみくじ") do |event|
  event.respond Omikuji.random_select
end

bot.run
