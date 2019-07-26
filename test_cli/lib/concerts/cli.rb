# our CLI Controller
class Concerts::CLI
    def call 
        puts "Here is a list of Bands Playing this Week:"
        list_bands
        menu
        goodbye
    end
    
    def list_bands
        # read about Here Doc
        # puts <<-DOC.gsub /^\s*/, ''
        #     1. My Chemical Romance
        #     2. Rammstein
        #     3. Erutan
        #     4. Backstreet Boys
        # DOC
        @showing = Concerts::Showing.today # returns new object "showing" happening today
        @showing.each.with_index(1) do |showing, i|
            puts "#{i}. #{showing.name}"
        end
    end

    def menu
        puts "Enter a number for the band you'd like to see, exit or list"
        input = "nil"
        while input != "exit"
            input = gets.strip.downcase
            if input.to_i > 0
                showing = @showing[input.to_i-1]
                puts "#{showing.name} - #{showing.date} - #{showing.time}"
            elsif input == "list"
                list_bands
            else
                "not sure what you want"
            end
            # case input
            # when "1"
            #     puts "more info on My Chemical Romance"
            # when "2"
            #     puts "more info on Rammstein"
            # when "3"
            #     puts "more info on Erutan"
            # when "4"
            #     puts "more info on Backstreet Boys"
            # when "list"
            #     list_bands
            # else
            #     puts "Not sure what you want, type list or exit"
            # end
        end
    end
    def goodbye 
        puts "see you tomorrow"
    end
end