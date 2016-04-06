require './lib/omikuji'
require './lib/enjo'

class Service
  def initialize(bot)
    @bot = bot
  end

  # おみくじと打つと大凶~大吉をランダムで返す
  def omikuji
    @bot.message(with_text: 'おみくじ') do |event|
      event.respond Omikuji.random_select
    end
  end

  # 炎上 text1 text2と打つと炎上ジェネレーターで生成された画像を返す
  def enjo
    @bot.message(start_with: '炎上') do |event|
      event.respond Enjo.url(event.message.content)
    end
  end
end