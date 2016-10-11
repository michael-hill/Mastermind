class Secret

  def generate_secret
  colors = ["r", "g", "b", "y"]
  result = []
  4.times do
    result << colors.shuffle.first
  end
  result
  end


end
