# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    make_quiet_bird_noise if is_bird && !loud
    if loud
      2.times { puts mammal_noise } if mammal_noise
      make_loud_bird_noise if is_bird
    elsif %w[cat dog leopard].include?(species)
      puts mammal_noise
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

  def make_quiet_bird_noise
    raise 'there is no such thing as a quiet hadedah!' if species == 'hadedah'
    puts 'squawk' if species == 'hadedah'
    puts 'caw' if species == 'eagle'
    puts 'hoot' if species == 'owl'
  end

  def make_loud_bird_noise
    puts 'squawk' if species == 'hadedah'
    puts 'caw' if species == 'eagle'
    puts 'hoot' if species == 'owl'

    puts 'hoot' if species == 'owl'
    puts 'caw' if species == 'eagle'
    puts 'squawk' if species == 'hadedah'
  end

  def is_bird
    species == 'owl' || species == 'eagle' || species == 'hadedah'
  end
end
