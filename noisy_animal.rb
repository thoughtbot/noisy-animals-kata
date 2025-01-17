class NoisyAnimal
  attr_reader :species

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

  def mammal_noise
    {
      "cat" => "meow",
      "dog" => "woof",
      "leopard" => "growl",
    }[species]
  end

  def make_bird_noise(is_loud:)
    if species == "hadedah"
      puts "squawk"
    elsif species == "eagle"
      puts "caw"
    else
      puts "hoot"
    end
    if is_loud
      if species == "owl"
        puts "hoot"
      end
      if species == "eagle"
        puts "caw"
      end
      if species == "hadedah"
        puts "squawk"
      end
    else
      raise "there is no such thing as a quiet hadedah!" if species == "hadedah"
    end
  end

  def make_mammal_noise(is_loud:)
    if is_loud
      if mammal_noise
        2.times { puts mammal_noise }
      end
    else
      puts mammal_noise
    end
  end

  def bird?
    species == "owl" || species == "eagle" || species == "hadedah"
  end
end
