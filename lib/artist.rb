class Artist
  require_relative "../lib/concerns/findable.rb"
  extend Concerns::Findable
  attr_accessor :name
  attr_reader :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

   def self.destroy_all
    @@all.clear
   end

   def self.create(name)
     artist = self.new(name)
     artist.save
     artist
   end

<<<<<<< HEAD
    def add_song(song)
       song.artist = self unless song.artist
       @songs << song unless @songs.include?(song)
    end

    def genres
      self.songs.collect{|song| song.genre}.uniq
    end
=======
   def add_song(song)
     song.artist = self unless song.artist
     @songs << song unless @songs.include?(song)
   end


>>>>>>> 84cc815d6b9da056ce29fb867e7645dd72f23d18

end
