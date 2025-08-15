# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if loud && is_animal
      2.times { puts animal_noise }
    elsif !loud && is_animal
      1.times { puts animal_noise }
      raise 'there is no such thing as a quiet hadedah!' if species == 'hadedah'
    end
  end

  private

  def animal_noise
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
    %w[owl eagle hadedah cat dog leopard].include?(species)
  end
end
