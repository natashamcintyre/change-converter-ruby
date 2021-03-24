class ChangeGenerator

  def convert(n)
    coins = [50, 20, 10, 5, 1, 0.5]
    change = []
    coins.each do |coin|
      while n >= coin do
        coin < 1 ? change << "#{(coin * 100).to_i}p" : change << "£#{coin}"
        n -= coin
      end
    end
    change
  end

end
