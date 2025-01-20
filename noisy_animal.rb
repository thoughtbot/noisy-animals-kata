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
        animal.quiet
      end
    else
      if loud
        animal.loud
      else
        animal.quiet
      end
    end
  end
end

class Animal
  attr_accessor :species, :noise

  def self.from_species(species)
    animal = Animal.new(species, {
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl',
      'eagle' => 'caw',
      'owl' => 'hoot',
      'hadedah' => 'squawk'
    }[species])
    loud_animal = WithLoudVoice.new(animal)
    species == 'hadedah' ? WithoutQuietVoice.new(loud_animal) : WithQuietVoice.new(loud_animal)
  end

  def initialize(species, noise)
    @species = species
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
