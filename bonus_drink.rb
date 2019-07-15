class BonusDrink
  def self.total_count_for(amount)
    total = amount

    quotient = amount / 3
    remainder = amount % 3

    total += quotient

    while (quotient + remainder) / 3 > 0
      tmp_q_r = quotient + remainder
      quotient = tmp_q_r / 3
      remainder = tmp_q_r % 3
      total += quotient
    end

    total
  end
end

puts BonusDrink.total_count_for(100)