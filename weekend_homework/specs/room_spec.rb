require 'minitest/autorun'
require 'minitest/rg'
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestRoom < Minitest::Test
 
  def setup
    
    @charley = Guest.new("Charley", 50, "Get Yo Freak On")
    @hannah = Guest.new("Hannah", 40, "Thong Song")
    @katrina = Guest.new("Katrina", 30, "Baby Got Back")
    @gillian = Guest.new("Gillian", 60, "Time After Time")

    @indaclub = Song.new("In Da Club", "50 cent")

    @room1 = Room.new(20)
    @room2 = Room.new(10)
  end


  def test_room_capacity
    assert_equal(20, @room1.room_capacity)
  end


  def test_can_add_guest_to_room
    @room1.add_guest_to_room(@charley)
    assert_equal([@charley], @room1.room_singers)
  end

  def test_can_remove_guest_from_room
    @room1.remove_guest_from_room(@charley)
    assert_equal([], @room1.room_singers)
  end


  def test_can_add_song_to_room
    @room1.add_song_to_room(@indaclub)
    assert_equal([@indaclub], @room1.room_songs)
  end


  def test_can_remove_song_from_room
    @room1.remove_song_from_room(@indaclub)
    assert_equal([], @room1.room_songs)
  end



end





