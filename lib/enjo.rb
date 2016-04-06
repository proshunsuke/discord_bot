require 'active_support'
require 'active_support/core_ext'

class Enjo
  BASE_URI = 'https://enjo-generator.herokuapp.com/api/create-enjo'
  def self.url(content)
    uri = URI(BASE_URI)
    uri.query = query_text_hash(content).to_param
    uri.to_s
  end

  private

  def self.query_text_hash(content)
    content = content.gsub(/[[:blank:]]/, ' ')
    match_date = content.match(/\A炎上\x20(\S+)\x20(\S+)\Z/)
    fail("フォーマットにマッチしませんでした。#{content}") if match_date.nil?
    {text1: match_date[1], text2: match_date[2]}
  end
end