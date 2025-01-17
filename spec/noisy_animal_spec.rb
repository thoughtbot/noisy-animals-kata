require "rspec"
require_relative "../noisy_animal"

describe NoisyAnimal do
  context "when the animal is a cat" do
    it "makes a meow noise twice" do
      animal = NoisyAnimal.new("cat")

      expect { animal.make_noise_twice }.to output("meow\nmeow\n").to_stdout
    end
  end

  context "when the animal is a dog" do
    it "makes a woof noise twice" do
      animal = NoisyAnimal.new("dog")

      expect { animal.make_noise_twice }.to output("woof\nwoof\n").to_stdout
    end
  end

  context "when the animal is a leopard" do
    it "makes a growl noise twice" do
      animal = NoisyAnimal.new("leopard")

      expect { animal.make_noise_twice }.to output("growl\ngrowl\n").to_stdout
    end
  end
end
