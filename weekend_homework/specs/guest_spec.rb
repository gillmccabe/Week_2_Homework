require 'minitest/autorun'
require 'minitest/rg'
require_relative('../guest')

class TestGuest < Minitest::Test
 
  def setup
    @charley = Guest.new("Charley", 50, "Get Yo Freak On")
    @hannah = Guest.new("Hannah", 40, "Thong Song")
    @katrina = Guest.new("Katrina", 30, "Baby Got Back")
    @gillian = Guest.new("Gillian", 60, "Time After Time")
  end



  def test_guest_has_name
    assert_equal("Charley", @charley.name)
  end


  def test_guest_has_money
    assert_equal(40, @hannah.money)
  end

  def test_guest_has_favourite_song
   assert_equal("Time After Time", @gillian.favourite_song)
  end



end