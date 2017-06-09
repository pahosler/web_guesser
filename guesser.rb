class Guesser
    @@guess_num = 0
    @@secret_number = rand(100)

    def initialize(guess=nil,color='')
        @guess = guess
        @color = color
    end

    def check_guess(guess)
        @guess = guess.to_i
        if @guess > @@secret_number + 5
            @color = "red"
            "Way too high!"
        elsif @guess > @@secret_number
            @color = "yellow"
            "Too high!"
        elsif @guess < @@secret_number - 5
            @color = "blue"
            "Way too low!"
        elsif @guess < @@secret_number
            @color = "light blue"
            "Too Low!"
        else
            @color = "green"
            "CORRECT! The secret Number is #{@@secret_number}"
        end
    end

    def get_guess
        @guess
    end

    def get_color
        @color
    end

    def guess?(guess)
        check_guess(guess)
    end

    def secret?
        @@secret_number
    end

end
