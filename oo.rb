class BasicSpecies
  NOISES = {
    "cat" => "meow",
    "dog" => "woof",
    "leopard" => "growl",
    "owl" => "hoot",
    "eagle" => "caw",
    "hadedah" => "squawk",
  }.freeze

  attr_reader :noise

  def initialize(species) = @noise = NOISES[species]

  def make_noise(is_loud:)
    puts noise
    puts noise if is_loud
  end
end

class Mouse
  def make_noise(is_loud:) = puts
end

class Snake
  def make_noise(is_loud:) = puts is_loud ? "hiss" : "slither"
end

class Hadedah < BasicSpecies
  def initialize = super("hadedah")

  def make_noise(is_loud:)
    raise "there is no such thing as a quiet hadedah!" unless is_loud
    super
  end
end

module SpeciesFactory
  def self.create(species)
    if (Module.const_defined?(species.capitalize))
      Module.const_get(species.capitalize).new
    else
      BasicSpecies.new(species)
    end
  end
end

class NoisyAnimal
  attr_reader :species

  def initialize(species) = @species = SpeciesFactory.create(species)

  def make_noise(is_loud: true) = species.make_noise(is_loud:)
end
