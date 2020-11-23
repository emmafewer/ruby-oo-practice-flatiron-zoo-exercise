class Animal
    attr_accessor :weight, :zoo
    attr_reader :species, :nickname


    @@all = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
        # @zoo = zoo
        # ^^ I could initiate zoo here and add it as a parameter. 
        #    That way I wouldn't need the add_animal method in zoo.
        #    However, then I would always need to write out the zoo when 
        #    creating a new animal.
    end

    def self.find_by_species(species)
        self.all.select{|animal| animal.species == species}
    end

    def self.all
        @@all
    end
end
