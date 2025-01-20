# frozen_string_literal: true

require 'delegate'

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    if species == "hadedah"
      if loud
        WithLoudVoice.new(Animal.from_species(species)).loud
      else
        WithoutQuietVoice.new(Animal.from_species(species)).quiet
      end
    else
      if loud
        WithLoudVoice.new(Animal.from_species(species)).loud
      else
        WithQuietVoice.new(Animal.from_species(species)).quiet
      end
    end
  end
end

class Animal
  attr_accessor :noise

  def self.from_species(species)
    Animal.new({
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl',
      'eagle' => 'caw',
      'owl' => 'hoot',
      'hadedah' => 'squawk'
    }[species])
  end

  def initialize(noise)
    @noise = noise
  end
end

class WithQuietVoice < SimpleDelegator
  def quiet
    puts noise
  end
end

class WithoutQuietVoice < SimpleDelegator
  def quiet
    raise "no such thing!"
  end
end

class WithLoudVoice < SimpleDelegator
  def loud
    puts noise, noise
  end
end
