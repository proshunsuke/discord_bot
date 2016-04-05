require './lib/omikuji'

class Service
  def initialize(bot)
    @bot = bot
  end

  def omikuji
    @bot.message(with_text: 'おみくじ') do |event|
      event.respond Omikuji.random_select
    end
  end
end