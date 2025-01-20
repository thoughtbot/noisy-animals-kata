# frozen_string_literal: true

require 'delegate'

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    animal = Animal.from_species(species)
    loud ? animal.loud : animal.quiet
  end
end

class Animal
  attr_accessor :species, :noise

  def self.from_species(species)
    case species
    when 'hadedah'
      WithLoudVoice.new(WithoutQuietVoice.new(Animal.new('squawk')))
    when 'dog'
      WithLoudVoice.new(WithQuietVoice.new(Animal.new('woof')))
    when 'leopard'
      WithLoudVoice.new(WithQuietVoice.new(Animal.new('growl')))
    when 'cat'
      WithLoudVoice.new(WithQuietVoice.new(Animal.new('meow')))
    when 'eagle'
      WithLoudVoice.new(WithQuietVoice.new(Animal.new('caw')))
    when 'owl'
      WithLoudVoice.new(WithQuietVoice.new(Animal.new('hoot')))
    end
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
