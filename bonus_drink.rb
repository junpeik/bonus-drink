class BonusDrink

  def initialize(purchased_ever)
    @EXCHANGEABLE = 3.freeze
    @purchased_sum = purchased_ever
  end

  def total_count_for(amount)
    bins = total_bins(amount)
    amount + omake_quantity(bins)
  end

  def total_bins(amount)
    @purchased_sum += amount
  end

  def omake_quantity(bins)
    bins / @EXCHANGEABLE
  end
end