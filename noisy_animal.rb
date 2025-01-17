class NoisyAnimal
  attr_reader :species

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
    return puts if species == "mouse"

    if noise
      puts noise
      puts noise if is_loud
    else
      puts snake_noise(is_loud:)
    end
  end

  private

  attr_reader :noise

  def bird? = BIRD_NOISES.keys.include?(species)
  def snake_noise(is_loud:) = is_loud ? "hiss" : "slither"
end
