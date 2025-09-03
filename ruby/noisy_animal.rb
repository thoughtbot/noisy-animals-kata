# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if is_animal && loud
      2.times { puts animal_noise }
    elsif is_animal && !loud
      puts animal_noise
    elsif is_bird && loud
      make_bird_noise_loud
    elsif is_bird && !loud
      make_bird_noise_quiet
    end
  end

  private

  def animal_noise
    {
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl'
    }[species]
  end

  def make_bird_noise_loud
    if species == 'hadedah'
      puts 'squawk'
    elsif species == 'eagle'
      puts 'caw'
    else
      puts 'hoot'
    end
    if species == 'owl'
      puts 'hoot'
    end
    if species == 'eagle'
      puts 'caw'
    end
    if species == 'hadedah'
      puts 'squawk'
    end
  end

  def make_bird_noise_quiet
    is_loud = false
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

  def is_animal
    %w[cat dog leopard].include?(species)
  end
end
