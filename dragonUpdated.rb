class Dragon

  def initialize
    @asleep = false
    @stuffInBelly     = 10 
    @stuffInIntestine =  0 
    @life = 1

    puts 'You just adopted a baby dragon! What will you name him?'
    name = gets.chomp
    @name = name
    puts @name + ' is born.'
    puts 'Your new baby dragon is named ' + @name +'.'
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
    puts @name + '\'s hunger level: ' + @stuffInBelly.to_s
    puts @name + '\'s poopy level: ' + @stuffInIntestine.to_s
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
    puts @name + '\'s hunger level: ' + @stuffInBelly.to_s
    puts @name + '\'s poopy level: ' + @stuffInIntestine.to_s
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      if @asleep
        passageOfTime
      end
      if @asleep
        puts @name + ' snores, filling the room with smoke.'
      end
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
    puts @name + '\'s hunger level: ' + @stuffInBelly.to_s
    puts @name + '\'s poopy level: ' + @stuffInIntestine.to_s
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
    puts @name + '\'s hunger level: ' + @stuffInBelly.to_s
    puts @name + '\'s poopy level: ' + @stuffInIntestine.to_s
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
    puts @name + '\'s hunger level: ' + @stuffInBelly.to_s
    puts @name + '\'s poopy level: ' + @stuffInIntestine.to_s
  end

  private

  def hungry?
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      @stuffInBelly     = @stuffInBelly     - 1
      @stuffInIntestine = @stuffInIntestine + 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit
    end
    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end

end

pet = Dragon.new

while true
  puts 'What do you wish to do? <feed> <walk> <toss> <rock> <putToBed> <exit>'
  action = gets.chomp
  if action == 'feed'
    pet.feed
  elsif action == 'toss'
    pet.toss
  elsif action == 'walk'
    pet.walk
  elsif action == 'putToBed'
    pet.putToBed
  elsif action == 'rock'
    pet.rock
  elsif action == 'exit'
    puts 'You abandon your dragon, making him yet another dragon growing up in a broken home.'
    exit
  else
    puts 'Please choose a valid option <feed> <walk> <toss> <rock> <putToBed>'
  end
end
