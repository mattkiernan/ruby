class OrangeTree

  def initialize 
    @height = 1
    @oranges = 0
    @age = 0
    @basket = 0

    puts 'You\'ve stumbled across a baby orange tree. You decide to adopt it.'
  end

  def oneYearPasses
    if @age < 20
      @age = @age + 1
      @oranges = 0
      if @height < 10
        @height = @height + 1
      end
      if @age > 4 and @age < 8
        @oranges = @oranges + 1
      elsif @age > 8 and @age < 15
        @oranges = @oranges + 5
      elsif @age > 15 and @age < 20
        @oranges = @oranges + 8
      end
    else 
      puts 'The tree dies!'
    exit
    end
  end

  def pickAnOrange i
    if @oranges >= i 
      @oranges = @oranges - i
      @basket = @basket + i
    else
      puts 'There are ' + @oranges.to_s + ' left'
    end
  end

  def countTheOranges
    puts 'There are ' + @oranges.to_s + ' oranges on the tree.'
  end

  def countBasket
    puts 'There are ' + @basket.to_s + ' oranges in your basket.'
  end

  def getStats
    puts 'height: ' + @height.to_s
    puts 'oranges on tree: ' + @oranges.to_s
    puts 'oranges in basket: ' + @basket.to_s
    puts 'age of tree: ' + @age.to_s
  end

  def admire
    puts 'It is a lovely tree!'
    oneYearPasses
  end

end

tree = OrangeTree.new

while true
  puts 'What do you wish to do? <pick> <countTree> <countBasket> <getStats> <exit> <admire>'
  action = gets.chomp
  if action == 'pick'
    puts 'How many?'
    i = gets.chomp
    tree.pickAnOrange i.to_i
  elsif action == 'countTree'
    tree.countTheOranges
  elsif action == 'countBasket'
    tree.countBasket
  elsif action == 'getStats'
    tree.getStats
  elsif action == 'exit'
    puts 'Your tree immediately dies!'
    exit
  elsif action == 'admire'
    tree.admire
  else
    puts 'Please choose a valid option <pick> <countTree> <countBasket> <getStats> <exit> <admire>'
  end
end