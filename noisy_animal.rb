# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if loud
      2.times { puts mammal_noise } if mammal_noise
      if is_bird
        puts 'squawk' if species == 'hadedah'
        puts 'caw' if species == 'eagle'
        puts 'hoot' if species == 'owl'

        puts 'hoot' if species == 'owl'
        puts 'caw' if species == 'eagle'
        puts 'squawk' if species == 'hadedah'
      end
    elsif %w[cat dog leopard].include?(species)
      puts mammal_noise
    elsif is_bird
      raise 'there is no such thing as a quiet hadedah!' if species == 'hadedah'
      puts 'caw' if species == 'eagle'
      puts 'hoot' if species == 'owl'
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

  def is_bird
    species == 'owl' || species == 'eagle' || species == 'hadedah'
  end
end
