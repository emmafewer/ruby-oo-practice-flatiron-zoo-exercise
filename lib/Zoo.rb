class Zoo
    attr_reader :name, :location
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    #See Animal class for other way
    def add_animal(animal)
        animal.zoo = self
    end

    def animals
        Animal.all.select{|animal| animal.zoo == self}
    end

    def animal_species
        animals.map{|animal| animal.species}.uniq
    end    

    def find_by_species(species)
        animals.select{|animal| animal.species == species}
    end    

    def animal_nicknames
        animals.map{|animal| animal.nickname}
    end 

    def self.find_by_location(location)
        self.all.select{|zoo| zoo.location == location}.map{|zoo|zoo.name}
    end

    def self.all
        @@all
    end
end
