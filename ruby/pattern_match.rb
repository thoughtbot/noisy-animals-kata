# frozen_string_literal: true

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    [
      { loud: true, repetitions: 2, noises: animal_noises },
      { loud: false, repetitions: 1, noises: animal_noises.except('hadedah') }
    ] => [*, { loud: ^loud, repetitions:, noises: }, *]

    repetitions.times do
      puts noises.fetch(species) { raise 'no such thing' }
    end
  end

  private

  def animal_noises
    {
      'cat' => 'meow',
      'dog' => 'woof',
      'leopard' => 'growl',
      'hadedah' => 'squawk',
      'eagle' => 'caw',
      'owl' => 'hoot'
    }
  end
end
