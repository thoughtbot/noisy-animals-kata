# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    raise 'no such thing!' if species == 'hadedah' && !loud

    noise = {
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl',
      'owl' => 'hoot',
      'eagle' => 'caw',
      'hadedah' => 'squawk'
    }[species]

    n = loud ? 2 : 1
    n.times { puts noise }
  end
end
