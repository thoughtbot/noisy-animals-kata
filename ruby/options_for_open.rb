# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    voice = voice_for_species
    loud ? voice.loud : voice.quiet
  end

  private

  def voice_for_species
    {
      'cat' => DefaultVoice.new('meow'),
      'dog' => DefaultVoice.new('woof'),
      'leopard' => DefaultVoice.new('growl'),
      'eagle' => DefaultVoice.new('caw'),
      'owl' => DefaultVoice.new('hoot'),
      'hadedah' => NoQuietVoice.new('squawk'),
    }[species]
  end
end

DefaultVoice = Data.define(:noise) do
  def loud = 2.times { puts noise }
  def quiet = puts noise
end

class NoQuietVoice < DefaultVoice
  def quiet = raise 'no such thing'
end

# alternatively:

class Cat
  def loud = 2.times { puts 'meow' }
  def quiet = puts 'meow'
end

class Dog
  def loud = 2.times { puts 'woof' }
  def quiet = puts 'woof'
end

# ... etc

class Snake
  def loud = puts 'hiss'
  def quiet = puts 'slither'
end

class Mouse
  def loud = puts ''
  def quiet = puts ''
end
