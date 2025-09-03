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
      puts 'squawk'
    elsif species == 'eagle'
      puts 'caw'
      puts 'caw'
    elsif species == 'owl'
      puts 'hoot'
      puts 'hoot'
    end
  end

  def make_bird_noise_quiet
    if species == 'hadedah'
      puts 'squawk'
    elsif species == 'eagle'
      puts 'caw'
    else
      puts 'hoot'
    end
    raise 'there is no such thing as a quiet hadedah!' if species == 'hadedah'
  end

  def is_bird
    species == 'owl' || species == 'eagle' || species == 'hadedah'
  end

  def is_animal
    %w[cat dog leopard].include?(species)
  end
end
