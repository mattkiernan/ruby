class Die

  def roll
    1 + rand(6)
  end

end

dice = Die.new

puts dice.roll
