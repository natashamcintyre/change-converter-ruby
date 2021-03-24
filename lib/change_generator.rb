class ChangeGenerator

  COINS = [5000, 2000, 1000, 500, 100, 50, 20, 10, 5]

  def initialize
    @change = []
  end

  def to_pence(n)
    if !n.is_a?(Numeric)
      raise "Incorrect input"
    else
      n * 100
    end
  end

  def convert(n)
    value = to_pence(n)
    COINS.each do |coin|
      while value >= coin do
        coin < 100 ? @change << "#{coin}p" : @change << "£#{coin/100}"
        value -= coin
      end
    end
    @change
  end

end
