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
  end

  def make_noise(is_loud: true)
    if species == "hadedah" && !is_loud
      raise "there is no such thing as a quiet hadedah!"
    end

    noise = bird? ? bird_noise : mammal_noise
    puts noise
    puts noise if is_loud
  end

  private

  def mammal_noise = @mammal_noise ||= MAMMAL_NOISES[species]
  def bird_noise = @bird_noise ||= BIRD_NOISES[species]

  def bird?
    species == "owl" || species == "eagle" || species == "hadedah"
  end
end
