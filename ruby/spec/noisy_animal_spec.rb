# frozen_string_literal: true

require 'rspec'
require_relative '../noisy_animal'

describe NoisyAnimal do
  it 'loud dog' do
    animal = NoisyAnimal.new('dog')

    expect { animal.make_noise }.to output("woof\nwoof\n").to_stdout
  end

  it 'quiet cat' do
    animal = NoisyAnimal.new('cat')

    expect { animal.make_noise(loud: false) }.to output("meow\n").to_stdout
  end

  it 'loud leopard' do
    animal = NoisyAnimal.new('leopard')

    expect { animal.make_noise }.to output("growl\ngrowl\n").to_stdout
  end

  it 'quiet dog' do
    animal = NoisyAnimal.new('dog')

    expect { animal.make_noise(loud: false) }.to output("woof\n").to_stdout
  end

  it 'quiet leopard' do
    animal = NoisyAnimal.new('leopard')

    expect { animal.make_noise(loud: false) }.to output("growl\n").to_stdout
  end

  it 'loud cat' do
    animal = NoisyAnimal.new('cat')

    expect { animal.make_noise }.to output("meow\nmeow\n").to_stdout
  end

  context 'when the animal is really a bird' do
    it 'loud owls' do
      animal = NoisyAnimal.new('owl')

      expect { animal.make_noise }.to output("hoot\nhoot\n").to_stdout
    end

    it 'loud eagles' do
      animal = NoisyAnimal.new('eagle')

      expect { animal.make_noise }.to output("caw\ncaw\n").to_stdout
    end

    it 'loud hadedahs' do
      animal = NoisyAnimal.new('hadedah')

      expect { animal.make_noise }.to output("squawk\nsquawk\n").to_stdout
    end

    it 'quiet owls' do
      animal = NoisyAnimal.new('owl')

      expect { animal.make_noise(loud: false) }.to output("hoot\n").to_stdout
    end

    it 'quiet eagles' do
      animal = NoisyAnimal.new('eagle')

      expect { animal.make_noise(loud: false) }.to output("caw\n").to_stdout
    end

    it 'quiet hadedahs' do
      animal = NoisyAnimal.new('hadedah')

      expect { animal.make_noise(loud: false) }.to raise_error(/no such thing/)
    end
  end
end
