class ChangeGenerator

  def convert(n)
    value = 100 * n
    coins = [5000, 2000, 1000, 500, 100, 50, 20, 10, 5]
    change = []
    coins.each do |coin|
      while value >= coin do
        coin < 100 ? change << "#{coin}p" : change << "£#{coin/100}"
        value -= coin
      end
    end
    change
  end

end
