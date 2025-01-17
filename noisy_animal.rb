class NoisyAnimal
  attr_reader :species, :noise

  MAMMAL_NOISES = {
    "cat" => "meow",
    "dog" => "woof",
    "leopard" => "growl",
  }.freeze
  BIRD_NOISES = {
    "owl" => "hoot",
    "eagle" => "caw",
    "hadedah" => "squawk",
  }.freeze

  def initialize(species)
    @species = species
    @noise = bird? ? BIRD_NOISES[species] : MAMMAL_NOISES[species]
  end

  def make_noise(is_loud: true)
    if species == "hadedah" && !is_loud
      raise "there is no such thing as a quiet hadedah!"
    end

    puts noise
    puts noise if is_loud
  end

  private

  def bird?
    species == "owl" || species == "eagle" || species == "hadedah"
  end
end
