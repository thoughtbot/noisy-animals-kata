# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if loud && is_animal
      2.times { puts animal_noise }
    elsif loud && is_bird
      make_bird_noise_loud
    elsif !loud && is_animal
      puts animal_noise
    elsif !loud && is_bird
      make_bird_noise_quiet
      raise 'there is no such thing as a quiet hadedah!' if species == 'hadedah'
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
    if species == 'hadedah'
      'squawk'
    elsif species == 'eagle'
      'caw'
    else
      'hoot'
    end
  end

  def make_bird_noise_loud
    2.times do
      puts bird_noise
    end
  end

  def make_bird_noise_quiet
    1.times do
      puts bird_noise
    end
  end

  def is_bird
    species == 'owl' || species == 'eagle' || species == 'hadedah'
  end

  def is_animal
    %w[cat dog leopard].include?(species)
  end
end
