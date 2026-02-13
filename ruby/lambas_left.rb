# frozen_string_literal: true

require 'delegate'

class NoisyAnimal
  attr_reader :species

  def initialize(species)
    @species = species
  end

  def make_noise(loud: true)
    low_volume, high_volume = {
      'dog' => [-> { puts 'woof' }, -> {puts "woof\nwoof"}],
      'leopard' => [-> { puts 'growl' }, -> {puts "growl\ngrowl"}],
      'cat' => [-> { puts 'meow' }, -> {puts "meow\nmeow"}],
      'eagle' => [-> { puts 'caw' }, -> {puts "caw\ncaw"}],
      'owl' => [-> { puts 'hoot' }, -> {puts "hoot\nhoot"}],
      'hadedah' => [-> { puts 'squawk' }, -> {raise "no such thing!"}]
    }[species]
    loud ? high_volume.call : low_volume.call
  end
end
