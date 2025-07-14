# frozen_string_literal: true

require 'delegate'

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    loud ? animal_for_species.loud : animal_for_species.quiet
  end

  def animal_for_species
    case species
    when 'dog'
      Animal['woof']
    when 'leopard'
      Animal['growl']
    when 'cat'
      Animal['meow']
    when 'eagle'
      Animal['caw']
    when 'owl'
      Animal['hoot']
    when 'hadedah'
      WithoutQuietVoice.new(Animal['squawk'])
    end
  end
end

Animal = Data.define(:noise) do
  def quiet = puts noise

  def loud = 2.times { puts noise }
end

class WithoutQuietVoice < SimpleDelegator
  def quiet = raise "no such thing!"
end
