# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if species == 'hadedah' && loud
      2.times { puts creature_noise }
    elsif species == 'hadedah' && !loud
      puts creature_noise
      raise 'there is no such thing as a quiet hadedah!'
    elsif is_animal && loud
      2.times { puts creature_noise }
    elsif is_animal && !loud
      puts creature_noise
    elsif is_bird && loud
      2.times { puts creature_noise }
    elsif is_bird && !loud
      puts creature_noise
    end
  end

  private

  def creature_noise
    {
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl',
      'hadedah' => 'squawk',
      'eagle' => 'caw',
      'owl' => 'hoot'
    }[species]
  end

  def is_animal
    %w[cat dog leopard].include?(species)
  end

  def is_bird
    %w[owl eagle hadedah].include?(species)
  end
end
