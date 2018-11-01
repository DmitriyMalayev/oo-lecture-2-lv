class Animal

  attr_accessor :name, :kingdom, :phylum, :klass, :order, :family, :genus, :species

  @@all = []

  #Hooks
  def initialize

  end

  # self.all - Class method (Getter)
  def self.all
    @@all
  end

end
