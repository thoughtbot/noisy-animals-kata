# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    times_for_animal(loud, species).times { puts noise_for_animal(species) }
  end

  private

  def noise_for_animal(species)
    {
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl',
      'hadedah' => 'squawk',
      'eagle' => 'caw',
      'owl' => 'hoot'
    }[species]
  end

  def times_for_animal(loud, species)
    if loud
      2
    else
      raise 'there is no such thing as a quiet hadedah!' if species == 'hadedah'
      1
    end
  end
end
