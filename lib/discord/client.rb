require 'discordrb'
require 'yaml'

module Discord
  class Client
    def initialize
      @bot = Discordrb::Bot.new secrets["mail"], secrets["password"]
    end

    def bot
      @bot
    end

    private

    def secrets
      @secrets ||= YAML.load_file('./config/secrets.yml')
    end
  end
end

