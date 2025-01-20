# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if loud
      if is_mammal
        2.times { puts mammal_noise }
      elsif is_bird
        puts 'squawk' if species == 'hadedah'
        puts 'caw' if species == 'eagle'
        puts 'hoot' if species == 'owl'

        puts 'hoot' if species == 'owl'
        puts 'caw' if species == 'eagle'
        puts 'squawk' if species == 'hadedah'
      end
    else
      if is_mammal
        puts mammal_noise
      elsif is_bird
        raise 'there is no such thing as a quiet hadedah!' if species == 'hadedah'
        puts 'caw' if species == 'eagle'
        puts 'hoot' if species == 'owl'
      end
    end
  end

  private

  def mammal_noise
    {
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl'
    }[species]
  end

  def is_mammal
    %w[cat dog leopard].include?(species)
  end

  def is_bird
    %w[owl eagle hadedah].include?(species)
  end
end
