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
    raise "there is no such thing as a quiet hadedah!" if species == "hadedah" && !is_loud

    puts noise
    puts noise if is_loud
  end

  private

  def bird? = BIRD_NOISES.keys.include?(species)
end
