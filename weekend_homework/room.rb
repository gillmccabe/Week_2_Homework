class Room

  attr_reader :room_capacity, :room_singers, :room_songs, :fee

  def initialize(capacity)
    @room_capacity = 2
    @room_singers = []
    @room_songs = []
    @fee = 50
  end


  def add_guest_to_room(guest)
      if @room_singers.length <= @room_capacity
        @room_singers << guest
      else
        return "Sorry room is too full to add another singer"
      end
  end

  def add_guest_to_room_money(guest)
    if guest.money >= @fee
      @room_singers << guest
    else
      return "Sorry you do not have enough money"
    end
  end


  def remove_guest_from_room(guest)
    @room_singers.delete(guest)
  end


  def add_song_to_room(song)
    @room_songs << song
  end


  def remove_song_from_room(song)
    @room_songs.delete(song)
  end

end