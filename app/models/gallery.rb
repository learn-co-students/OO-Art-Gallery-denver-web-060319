class Gallery

  attr_reader :name, :city
  @@all = []


  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities_with_gallery
    cities_galleries = self.all.map do |gallery|
      gallery.city
    end
    cities_galleries.uniq
  end
  
  def get_artists
    paintings = Painting.all.select do |painting|
      painting.gallery == self
    end
    paintings.map do |painting|
      painting.artist
    end
  end

end
