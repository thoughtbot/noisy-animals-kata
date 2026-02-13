# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    voice = Voice.from_species(species)

    loud ? voice.loud : voice.quiet
  end
end

class Voice
  attr_accessor :noise

  def self.from_species(species)
    case species
    when 'cat' then new('meow')
    when 'dog' then new('woof')
    when 'leopard' then new('growl')
    when 'owl' then new('hoot')
    when 'eagle' then new('caw')
    when 'hadedah' then NoQuietVoice.new('squawk')
    end
  end

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
