require 'nokogiri'
require 'open-uri'
require 'pry'

class Animal

  attr_accessor :name, :kingdom, :phylum, :klass, :order, :family, :genus

  @@all = []

  # Hook
  def initialize

  end

  # self.all - Class method (Getter)
  def self.all
    @@all
  end

  # Class constructor (A "wrapper" that extends the functionality of .new)
  def self.new_from_wikipedia(url)
    animal = Animal.new
    #Fill in the Animal's data
    # doc = Nokogiri::HTML(open(url))
    # #binding.pry
    # animal.name = doc.search("h1#firstHeading").text.chomp
    # animal.kingdom = doc.search(".infobox.biota tbody tr[7] td[2]").text.chomp
    # animal.phylum = doc.search(".infobox.biota tbody tr[8] td[2]").text.chomp
    # animal.klass = doc.search(".infobox.biota tbody tr[10] td[2]").text.chomp
    # animal.order = doc.search(".infobox.biota tbody tr[11] td[2]").text.chomp
    # animal.family = doc.search(".infobox.biota tbody tr[12] td[2]").text.chomp
    # animal.genus = doc.search(".infobox.biota tbody tr[13] td[2]").text.chomp
    # animal.species = doc.search(".infobox.biota tbody tr[14] td[2]").text.chomp
    # animal
    properties = AnimalScraper.wikipedia(url)
    properties.each do |k,v|
      animal.send("#{k}=", v)
    end
    animal
  end



end
