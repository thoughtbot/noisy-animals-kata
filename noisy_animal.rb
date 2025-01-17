class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(is_loud = true)
    if is_bird && !is_loud
      make_bird_noise(is_loud: false)
    elsif is_bird
      make_bird_noise(is_loud: true)
    end
    if is_loud
      if species == "cat"
        puts "meow"
        puts "meow"
      elsif species == "dog"
        puts "woof"
        puts "woof"
      elsif species == "leopard"
        puts "growl"
        puts "growl"
      end
    elsif species == "cat"
      puts "meow"
    elsif species == "dog"
      puts "woof"
    elsif species == "leopard"
      puts "growl"
    end
  end

  private

  def make_bird_noise(is_loud: true)
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
    end
  end

  def is_bird
    species == "owl" || species == "eagle" || species == "hadedah"
  end
end
