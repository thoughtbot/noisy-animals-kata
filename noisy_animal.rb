# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if is_bird && !loud
      make_bird_noise(false)
    end
    if loud
      if mammal_noise
        2.times { puts mammal_noise }
      end
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
      if species == 'owl'
        puts 'hoot'
      end
      if species == 'eagle'
        puts 'caw'
      end
      if species == 'hadedah'
        puts 'squawk'
      end
    else
      raise 'there is no such thing as a quiet hadedah!' if species == 'hadedah'
    end
  end

  def is_bird
    species == 'owl' || species == 'eagle' || species == 'hadedah'
  end
end
