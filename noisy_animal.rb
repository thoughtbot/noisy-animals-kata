# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if is_hadedah
      if loud
        2.times { puts 'squawk' }
      else
        raise 'there is no such thing as a quiet hadedah!'
      end
    else
      if loud
        2.times { puts non_hadedah_noise }
      else
        puts non_hadedah_noise
      end
    end
  end

  private

  def non_hadedah_noise
    {
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl',
      'eagle' => 'caw',
      'owl' => 'hoot'
    }[species]
  end

  def is_hadedah
    %w[hadedah].include?(species)
  end
end
