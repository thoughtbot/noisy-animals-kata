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
  def self.from_species(species)
    case species
    when 'hadedah'
      WithLoudVoice.new(WithoutQuietVoice.new(Animal.new), %w[squawk squawk])
    when 'dog'
      WithLoudVoice.new(WithQuietVoice.new(Animal.new, 'woof'), %w[woof woof])
    when 'leopard'
      WithLoudVoice.new(WithQuietVoice.new(Animal.new, 'growl'), %w[growl growl])
    when 'cat'
      WithLoudVoice.new(WithQuietVoice.new(Animal.new, 'meow'), %w[meow meow])
    when 'eagle'
      WithLoudVoice.new(WithQuietVoice.new(Animal.new, 'caw'), %w[caw caw])
    when 'owl'
      WithLoudVoice.new(WithQuietVoice.new(Animal.new, 'hoot'), %w[hoot hoot])
    when 'snake'
      WithLoudVoice.new(WithQuietVoice.new(Animal.new, 'slither'), 'hiss')
    when 'mouse'
      WithLoudVoice.new(WithQuietVoice.new(Animal.new, ''), '')
    end
  end
end

class WithQuietVoice < SimpleDelegator
  def initialize(obj, quiet)
    super(obj)
    @quiet = quiet
  end

  def quiet = puts @quiet
end

class WithoutQuietVoice < SimpleDelegator
  def quiet = raise "no such thing!"
end

class WithLoudVoice < SimpleDelegator
  def initialize(obj, loud)
    super(obj)
    @loud = loud
  end

  def loud = puts @loud
end
