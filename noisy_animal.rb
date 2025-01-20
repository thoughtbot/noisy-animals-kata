# frozen_string_literal: true

require 'delegate'

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    animal = Animal.from_species(species)
    if species == "hadedah"
      if loud
        animal.loud
      else
        WithoutQuietVoice.new(animal).quiet
      end
    else
      if loud
        animal.loud
      else
        WithQuietVoice.new(animal).quiet
      end
    end
  end
end

class Animal
  attr_accessor :noise

  def self.from_species(species)
    WithLoudVoice.new(Animal.new({
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl',
      'eagle' => 'caw',
      'owl' => 'hoot',
      'hadedah' => 'squawk'
    }[species]))
  end

  def initialize(noise)
    @noise = noise
  end
end

class WithQuietVoice < SimpleDelegator
  def quiet = puts noise
end

class WithoutQuietVoice < SimpleDelegator
  def quiet = raise "no such thing!"
end

class WithLoudVoice < SimpleDelegator
  def loud = puts noise, noise
end
