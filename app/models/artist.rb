class Artist

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def list_paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def list_galleries
    list_paintings.map do |gallery_painting|
      gallery_painting.gallery
    end
  end

  def list_cities
    list_galleries.map do |gallery|
      gallery.city
    end
  end

  def self.years_experience
    total_experience = self.all.map do
      |artist| artist.years_active     
      end
    total_experience.reduce(:+) / (self.all.count)
  end

end
