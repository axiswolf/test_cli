class Concerts::Showing
    attr_accessor :name, :date, :time, :location
    def self.today
    #     # should return a bunch of instances of Showing
    #     puts <<-DOC.gsub /^\s*/, ''
    #     1. My Chemical Romance
    #     2. Rammstein
    #     3. Erutan
    #     4. Backstreet Boys
    # DOC
        artist_1 = self.new
        artist_1.name = "My Chemical Romance"
        artist_1.date = "July 25, 2019"
        artist_1.time = "9:00 P.M."
        artist_1.location = "Los Angeles, California"

        artist_2 = self.new
        artist_2.name = "Rammstein"
        artist_2.date = "July 26, 2019"
        artist_2.time = "9:00 P.M."
        artist_2.location = "Los Angeles, California"

        artist_3 = self.new
        artist_3.name = "Erutan"
        artist_3.date = "July 27, 2019"
        artist_3.time = "10:00 P.M."
        artist_3.location = "Los Angeles, California"

        artist_4 = self.new
        artist_4.name = "Backstreet Boys"
        artist_4.date = "July 30, 2019"
        artist_4.time = "10:00 P.M."
        artist_4.location = "Los Angeles, California"

        [artist_1, artist_2, artist_3, artist_4]
    end

end
