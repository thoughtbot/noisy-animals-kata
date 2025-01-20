# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if is_hadedah
      if loud
        2.times { puts noise }
      else
        raise 'there is no such thing as a quiet hadedah!'
      end
    else
      if loud
        2.times { puts noise }
      else
        puts noise
      end
    end
  end

  private

  def noise
    {
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl',
      'eagle' => 'caw',
      'owl' => 'hoot',
      'hadedah' => 'squawk'
    }[species]
  end

  def is_hadedah
    %w[hadedah].include?(species)
  end
end
