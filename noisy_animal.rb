# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if loud
      if is_hadedah
        puts 'squawk' if species == 'hadedah'
        puts 'squawk' if species == 'hadedah'
      else
        2.times {puts non_hadedah_noise }
      end
    else
      if is_hadedah
        raise 'there is no such thing as a quiet hadedah!'
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
