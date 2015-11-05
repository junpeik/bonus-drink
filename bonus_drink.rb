class BonusDrink
  def self.total_count_for(amount)
    init = amount
    exchangeable = 0
    until amount < 3 do
      amount = amount - 3 + 1
      exchangeable += 1
    end
    init + exchangeable
  end
end