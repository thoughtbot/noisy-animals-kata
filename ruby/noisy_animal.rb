# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if species == 'hadedah' && loud
      2.times { puts bird_noise }
    elsif species == 'hadedah' && !loud
      puts bird_noise
      raise 'there is no such thing as a quiet hadedah!'
    elsif is_animal && loud
      2.times { puts animal_noise }
    elsif is_animal && !loud
      puts animal_noise
    elsif is_bird && loud
      2.times { puts bird_noise }
    elsif is_bird && !loud
      puts bird_noise
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

  def bird_noise
    {
      'hadedah' => 'squawk',
      'eagle' => 'caw',
      'owl' => 'hoot'
    }[species]
  end

  def is_bird
    species == 'owl' || species == 'eagle' || species == 'hadedah'
  end

  def is_animal
    %w[cat dog leopard].include?(species)
  end
end
