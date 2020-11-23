class Animal
    attr_accessor :weight, :zoo
    attr_reader :species, :nickname


    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
        @zoo = zoo
    end

    def self.find_by_species(species)
        self.all.select{|animal| animal.species == species}
    end

    def self.all
        @@all
    end
end
