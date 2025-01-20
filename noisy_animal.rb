# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    make_bird_noise(false) if is_bird && !loud
    if loud
      2.times { puts mammal_noise } if mammal_noise
      make_bird_noise(true) if is_bird
    elsif %w[cat dog leopard].include?(species)
      puts mammal_noise
    end
  end

  private

  def mammal_noise
    {
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl'
    }[species]
  end

  def make_bird_noise(is_loud = true)
    if species == 'hadedah'
      puts 'squawk'
    elsif species == 'eagle'
      puts 'caw'
    else
      puts 'hoot'
    end
    if is_loud
      puts 'hoot' if species == 'owl'
      puts 'caw' if species == 'eagle'
      puts 'squawk' if species == 'hadedah'
    elsif species == 'hadedah'
      raise 'there is no such thing as a quiet hadedah!'
    end
  end

  def is_bird
    species == 'owl' || species == 'eagle' || species == 'hadedah'
  end
end
