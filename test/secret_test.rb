require './test/test_helper'
require './lib/secret'

class SecretTest < Minitest::Test

  def test_secret_can_generate_code
    result = Secret.new.generate_secret
    # result = ["r","r","r","r"]
    assert_equal 4, result.length
    secret_colors = ["r", "g", "b", "y"]
    # result.each do |color|
    #   color.include?("y")
    #   # binding.pry
    #   assert_equal t
  end
end
