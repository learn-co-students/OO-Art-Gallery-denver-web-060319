class Painting

  attr_reader :title, :price, :style, :gallery

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @style = style
    @gallery = gallery
    @@all << self
  end

  def self.styles
    painting_styles = self.all.map do |painting|
      painting.style
    end
    painting_styles.uniq
  end

end
