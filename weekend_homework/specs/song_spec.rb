require 'minitest/autorun'
require 'minitest/rg'
require_relative('../song')

class TestGuest < Minitest::Test
 
  def setup
    @indaclub = Song.new("In Da Club", "50 cent")
  end



  def test_song_has_title
    assert_equal("In Da Club", @indaclub.title)
  end


  def test_song_has_artist
    assert_equal("50 cent", @indaclub.artist)
  end

  


end