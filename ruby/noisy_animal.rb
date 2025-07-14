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
    @voice ||= {
      'dog' => Voice['woof'],
      'leopard' => Voice['growl'],
      'cat' => Voice['meow'],
      'eagle' => Voice['caw'],
      'owl' => Voice['hoot'],
      'hadedah' => WithoutQuiet.new(Voice['squawk']),
      'mouse' => SingleVolume.new(Voice[''])
    }[species]
  end
end

Voice = Data.define(:noise) do
  def quiet = puts noise

  def loud = 2.times { puts noise }
end

class WithoutQuiet < SimpleDelegator
  def quiet = raise "no such thing!"
end

class SingleVolume < SimpleDelegator
  def loud = quiet
end
