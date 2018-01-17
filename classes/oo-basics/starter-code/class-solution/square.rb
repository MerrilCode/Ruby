class Square

  attr_accessor :side_length

  def initialize  side_length
    self.side_length = side_length
  end

  def area
    self.side_length ** 2
  end

  def perimeter
    self.side_length * 4
  end

  def scale factor
    self.side_length *= factor
  end
end