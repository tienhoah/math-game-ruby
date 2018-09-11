class Player
  attr_reader :name, :life, :nickname

  def initialize(name, life, nickname)
    @name = name
    @life = life
    @nickname = nickname
  end

  def loseLife(num)
    @life = @life - num
  end



end




