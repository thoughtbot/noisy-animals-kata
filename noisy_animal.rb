class NoisyAnimal
  attr_reader :species

  NOISES = {
    "cat" => "meow",
    "dog" => "woof",
    "leopard" => "growl",
    "owl" => "hoot",
    "eagle" => "caw",
    "hadedah" => "squawk",
  }.freeze

  def initialize(species)
    @species = species
    @noise = NOISES[species]
  end

  def make_noise(is_loud: true)
    raise "there is no such thing as a quiet hadedah!" if species == "hadedah" && !is_loud
    return puts if species == "mouse"
    return puts snake_noise(is_loud:) if noise.nil?

    puts noise
    puts noise if is_loud
  end

  private

  attr_reader :noise

  def snake_noise(is_loud:) = is_loud ? "hiss" : "slither"
end
