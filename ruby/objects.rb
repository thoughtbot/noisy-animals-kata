# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    voice = {
      'cat' => Voice.new('meow'),
      'dog' => Voice.new('woof'),
      'leopard' => Voice.new('growl'),
      'owl' => Voice.new('hoot'),
      'eagle' => Voice.new('caw'),
      'hadedah' => NoQuietVoice.new('squawk')
    }[species]

    loud ? voice.loud : voice.quiet
  end
end

class Voice
  attr_accessor :noise

  def initialize(noise)
    @noise = noise
  end

  def quiet = puts noise

  def loud = 2.times { puts noise }
end

class NoQuietVoice < Voice
  def initialize(noise)
    super(noise)
  end

  def quiet = raise 'no such thing!'
end
