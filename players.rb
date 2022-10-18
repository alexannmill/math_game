class Player

  @@id = 0

  attr_accessor :life, :id
  
  def initialize
    @life = 3
    @id = @@id +=1
    puts "Player #{id} created with #{life} lives"
  end

  def loose_life
    @life = @life - 1
  end
end
