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
    if bird?
      make_bird_noise(is_loud:)
    else
      make_mammal_noise(is_loud:)
    end
  end

  private

  def mammal_noise = @mammal_noise ||= MAMMAL_NOISES[species]
  def bird_noise = @bird_noise ||= BIRD_NOISES[species]

  def make_bird_noise(is_loud:)
    puts bird_noise
    if is_loud
      puts bird_noise
    elsif species == "hadedah"
      raise "there is no such thing as a quiet hadedah!"
    end
  end

  def make_mammal_noise(is_loud:)
    puts mammal_noise
    puts mammal_noise if is_loud
  end

  def bird?
    species == "owl" || species == "eagle" || species == "hadedah"
  end
end
