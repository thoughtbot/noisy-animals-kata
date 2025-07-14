# frozen_string_literal: true

require 'delegate'

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    loud ? voice.loud : voice.quiet
  end

  def voice
    {
      'dog' => Voice['woof'],
      'leopard' => Voice['growl'],
      'cat' => Voice['meow'],
      'eagle' => Voice['caw'],
      'owl' => Voice['hoot'],
      'hadedah' => WithoutQuietVoice.new(Voice['squawk'])
    }[species]
  end
end

Voice = Struct.new(:noise) do
  def quiet = puts noise

  def loud = 2.times { puts noise }
end

class WithoutQuietVoice < SimpleDelegator
  def quiet = raise "no such thing!"
end
