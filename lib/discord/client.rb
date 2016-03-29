require 'discordrb'
require 'yaml'

module Discord
  class Client
    def initialize
      @bot = Discordrb::Bot.new secrets["mail"], secrets["password"]
    end

    def run
      @bot.run
    end

    def response(text, message)
      @bot.message(with_text: text) do |event|
        event.respond message
      end
    end

    private

    def secrets
      @secrets ||= YAML.load_file('./config/secrets.yml')
    end
  end
end

