class Artist

	@@all = []

	attr_accessor :name

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_song(name, genre)
		# binding.pry
		Song.new(name, self, genre)
	end

	def songs
		# binding.pry
		Song.all.select {|song| song.artist == self}
	end

	def genres
		songs.map {|song| song.genre}
	end
end