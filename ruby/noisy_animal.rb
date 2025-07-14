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
  attr_accessor :quiet_noise, :loud_noise

  def self.from_species(species)
    case species
    when 'hadedah'
      WithoutQuietVoice.new(Animal.new('', %w[squawk squawk]))
    when 'dog'
      Animal.new('woof', %w[woof woof])
    when 'leopard'
      Animal.new('growl', %w[growl growl])
    when 'cat'
      Animal.new('meow', %w[meow meow])
    when 'eagle'
      Animal.new('caw', %w[caw caw])
    when 'owl'
      Animal.new('hoot', %w[hoot hoot])
    when 'snake'
      Animal.new('slither', 'hiss')
    when 'mouse'
      Animal.new('', '')
    end
  end

  def initialize(quiet_noise = '', loud_noise = '')
    @quiet_noise = quiet_noise
    @loud_noise = loud_noise
  end

  def quiet = puts quiet_noise

  def loud = puts loud_noise
end

class WithoutQuietVoice < SimpleDelegator
  def quiet = raise "no such thing!"
end
