class Guesser
    @@guess_num = 0
    @@secret_number = rand(99)+1

    def initialize(guess=nil,chances=5,color='')
        @guess = guess
        @color = color
        @chances = chances
        @message = ""
    end

    def play

    end

    def check_guess
          if (@guess == nil || @guess == 0)
            @color = ''
            @message = "Please guess a number"
            @chances = 6
            @@secret_number = rand(99)+1
          elsif @guess > @@secret_number + 5
              @color = "red"
              @message = "Way too high!"
          elsif @guess > @@secret_number
            @color = "yellow"
            @message = "Too high!"
          elsif @guess < @@secret_number - 5
            @color = "blue"
            @message = "Way too low!"
          elsif @guess < @@secret_number
            @color = "LightBlue"
            @message = "Too Low!"
          else
            @color = "green"
            @message = "CORRECT! The secret Number is #{@guess}<br> Try Again"
            @@secret_number = rand(99)+1
            @chances = 6
          end
          @chances -= 1

          if (@chances <= 0 && @color != "green")
            @color = "orange"
            @message = "You lose! The Secret Number was #{@@secret_number}<br/>Try Again"
            @@secret_number=rand(100)
            @chances = 5

          end
    end

    def get_guess
        @guess
    end

    def get_color
        @color
    end

    def guess=(guess)
        @guess = guess.to_i
    end

    def secret?
        @@secret_number
    end

    def get_message
      @message
    end

    def get_chances
      tries = (@chances > 1) ? "tries" : "try"
      "#{@chances} #{tries}"
    end

end
