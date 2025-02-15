class Song

    @@genre_count = {}
    @@artist_count = {}

    attr_accessor :name, :artist, :genre  
    
    @@count = 0

    @@artists = []

    @@genres = []

    def initialize(name, artist, genre)
        @genre = genre
        @name = name
        @artist = artist
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    def name
        @name
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.each do |genre|
            if !@@genre_count.include?(genre)
                @@genre_count[genre] = 1
            else
                @@genre_count[genre] += 1
            end

           
        end

        @@genre_count

    end

    def self.artist_count
        @@artists.each do |artist|
            if !@@artist_count.include?(artist)
                @@artist_count[artist] = 1
            else
                @@artist_count[artist] += 1
            end
        end

        @@artist_count
    end





end