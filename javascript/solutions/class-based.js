const NOISES = {
  cat: 'meow',
  dog: 'woof',
  leopard: 'growl',
  owl: 'hoot',
  eagle: 'caw',
  hadedah: 'squawk',
};

class NoisyAnimal {
  constructor(species) {
    this.species = species;
    this.noise = NOISES[species];
  }

  makeNoise({ loud = true } = {}) {
    if (!loud && this.species === 'hadedah') {
      throw new Error('there is no such thing as a quiet hadedah!');
    }

    console.log(this.noise);
    if (loud) {
      console.log(this.noise);
    }
  }
}

function createNoisyAnimal(species) {
  const animal = new NoisyAnimal(species);
  return { makeNoise: (...args) => animal.makeNoise(...args) };
}

module.exports = createNoisyAnimal;
