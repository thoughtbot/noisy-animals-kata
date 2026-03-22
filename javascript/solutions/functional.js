const NOISES = {
  cat: 'meow',
  dog: 'woof',
  leopard: 'growl',
  owl: 'hoot',
  eagle: 'caw',
  hadedah: 'squawk',
};

function createNoisyAnimal(species) {
  const noise = NOISES[species];

  function makeNoise({ loud = true } = {}) {
    if (!loud && species === 'hadedah') {
      throw new Error('there is no such thing as a quiet hadedah!');
    }

    console.log(noise);
    if (loud) {
      console.log(noise);
    }
  }

  return { makeNoise };
}

module.exports = createNoisyAnimal;
