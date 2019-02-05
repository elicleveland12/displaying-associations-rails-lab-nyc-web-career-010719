class Artist < ActiveRecord::Base
  has_many :songs

  def song_count
    arr = []
    Song.all.select do |song|
      if song.artist_id == self.id
        arr << song.title
      end
    end
    arr.length
  end
end
