class AnimalScraper

  def self.wikipedia(url)
    doc = Nokogiri::HTML(open(url))
    animal = {}
    animal[:name] = doc.search("h1#firstHeading").text.strip
    animal[:kingdom] = doc.search(".infobox.biota tbody tr[7] td[2]").text.strip
    animal[:phylum] = doc.search(".infobox.biota tbody tr[8] td[2]").text.strip
    animal[:klass] = doc.search(".infobox.biota tbody tr[10] td[2]").text.strip
    animal[:order] = doc.search(".infobox.biota tbody tr[11] td[2]").text.strip
    animal[:family] = doc.search(".infobox.biota tbody tr[12] td[2]").text.strip
    animal[:genus] = doc.search(".infobox.biota tbody tr[13] td[2]").text.strip
    animal
  end

end
