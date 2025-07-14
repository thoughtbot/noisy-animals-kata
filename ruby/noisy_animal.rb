# frozen_string_literal: true

require 'delegate'

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    loud ? voice_for_species.loud : voice_for_species.quiet
  end

  def voice_for_species
    case species
    when 'dog'
      Voice['woof']
    when 'leopard'
      Voice['growl']
    when 'cat'
      Voice['meow']
    when 'eagle'
      Voice['caw']
    when 'owl'
      Voice['hoot']
    when 'hadedah'
      WithoutQuietVoice.new(Voice['squawk'])
    end
  end
end

Voice = Data.define(:noise) do
  def quiet = puts noise

  def loud = 2.times { puts noise }
end

class WithoutQuietVoice < SimpleDelegator
  def quiet = raise "no such thing!"
end
