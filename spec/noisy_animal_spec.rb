require "rspec"
require_relative "../noisy_animal"

describe NoisyAnimal do
  context "when the animal is a cat" do
    it "makes a meow noise twice" do
      animal = NoisyAnimal.new("cat")

      expect { animal.make_noise }.to output("meow\nmeow\n").to_stdout
    end
  end

  context "when the animal is a dog" do
    it "makes a woof noise twice" do
      animal = NoisyAnimal.new("dog")

      expect { animal.make_noise }.to output("woof\nwoof\n").to_stdout
    end
  end

  context "when the animal is a leopard" do
    it "makes a growl noise twice" do
      animal = NoisyAnimal.new("leopard")

      expect { animal.make_noise }.to output("growl\ngrowl\n").to_stdout
    end
  end

  context "when the animal is unusually quiet" do
    it "cat goes meow" do
      animal = NoisyAnimal.new("cat")

      expect { animal.make_noise(is_loud: false) }.to output("meow\n").to_stdout
    end

    it "dog goes woof" do
      animal = NoisyAnimal.new("dog")

      expect { animal.make_noise(is_loud: false) }.to output("woof\n").to_stdout
    end

    it "leopard goes growl" do
      animal = NoisyAnimal.new("leopard")

      expect { animal.make_noise(is_loud: false) }.to output("growl\n").to_stdout
    end
  end

  context "when the animal is really a bird" do
    it "loud owls hoot twice" do
      animal = NoisyAnimal.new("owl")

      expect { animal.make_noise(is_loud: true) }.to output("hoot\nhoot\n").to_stdout
    end

    it "loud eagles caw twice" do
      animal = NoisyAnimal.new("eagle")

      expect { animal.make_noise(is_loud: true) }.to output("caw\ncaw\n").to_stdout
    end

    it "loud hadedahs squawk twice" do
      animal = NoisyAnimal.new("hadedah")

      expect { animal.make_noise(is_loud: true) }.to output("squawk\nsquawk\n").to_stdout
    end

    it "quiet owls hoot" do
      animal = NoisyAnimal.new("owl")

      expect { animal.make_noise(is_loud: false) }.to output("hoot\n").to_stdout
    end

    it "quiet eagles caw" do
      animal = NoisyAnimal.new("eagle")

      expect { animal.make_noise(is_loud: false) }.to output("caw\n").to_stdout
    end

    it "quiet hadedahs do not exist" do
      animal = NoisyAnimal.new("hadedah")

      expect { animal.make_noise(is_loud: false) }.to raise_error(/no such thing/)
    end
  end

  context "when animal is a mouse" do
    it "makes no noise", :aggregate_failures do
      animal = NoisyAnimal.new("mouse")

      expect { animal.make_noise(is_loud: false) }.to output("\n").to_stdout
      expect { animal.make_noise(is_loud: true) }.to output("\n").to_stdout
    end
  end

  context "when animal is a snake" do
    it "makes the noise 'slither'" do
      animal = NoisyAnimal.new("snake")

      expect { animal.make_noise(is_loud: false) }.to output("slither\n").to_stdout
    end

    it "makes the noise 'hiss' when loud" do
      animal = NoisyAnimal.new("snake")

      expect { animal.make_noise(is_loud: true) }.to output("hiss\n").to_stdout
    end
  end
end
