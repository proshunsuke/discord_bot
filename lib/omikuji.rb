class Omikuji
  KUJI = %w(大吉 中吉 小吉 吉 半吉 末吉 末小吉 凶 小凶 半凶 末凶 大凶)

  def self.random_select
    kuji_list.sample
  end

  private

  def self.kuji_list
    KUJI
  end
end
