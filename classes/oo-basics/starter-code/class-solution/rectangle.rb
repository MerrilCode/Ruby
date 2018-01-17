class Rectangle

  attr_accessor :height, :width

  def initialize h,w
    self.height = h
    self.width = w
  end

  def area
    self.height * self.width
  end

  def perimeter
    (self.width * 2) + (self.height * 2)
  end

  def scale factor
    self.height *= factor
    self.width *= factor
  end
end